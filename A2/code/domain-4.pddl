(define (domain MineBot)
    (:types
        MineBot cell ore hammer rock lift chargestation extinguisher
    ) 

    (:predicates
        (Connect ?c1 - cell ?c2 - cell)
        (Location ?x - object ?c - cell)
        (Hold ?m - MineBot ?h - object)
        (Clear ?y - MineBot)
        (Block ?o1 - ore)
        (Fire ?c4 - cell)
        (Item ?i - object)
        (OreGet ?g - ore)
        (Large ?o - ore)
        (Tandom ?m1 - MineBot)
    )

    (:functions
        (battery ?m - MineBot)

    )

    (:constants Lift - lift
    )

    (:action MoveClear
        :parameters (?m - MineBot ?c1 - cell ?c2 - cell)
        :precondition (and 
            (Location ?m ?c1) 
            (Connect ?c1 ?c2)
            (Clear ?m)
            (>= (battery ?m) 1)
            (not(Fire ?c2))
            (not(Tandom ?m)))
        :effect (and 
            (Location ?m ?c2) 
            (not(Location ?m ?c1)) 
            (decrease (battery ?m) 1))
    )

    (:action MoveHoldI
        :parameters (?m - MineBot ?c1 - cell ?c2 - cell ?i - object)
        :precondition (and 
            (Location ?m ?c1) 
            (Connect ?c1 ?c2)
            (Hold ?m ?i)
            (>= (battery ?m) 3)
            (not(Fire ?c2))
            (not(Tandom ?m)))
        :effect (and 
            (Location ?m ?c2)
            (not(Location ?m ?c1)) 
            (decrease (battery ?m) 3))
    )
    
    (:action MoveHoldOreTogether
        :parameters (?m1 - MineBot ?m2 - MineBot ?c1 - cell ?c2 - cell)
        :precondition (and 
            (Location ?m1 ?c1)
            (Location ?m2 ?c1) 
            (Connect ?c1 ?c2)
            (>= (battery ?m1) 3)
            (>= (battery ?m2) 3)
            (not(Fire ?c2))
            (Tandom ?m1)
            (Tandom ?m2)
            (not(= ?m1 ?m2)))
        :effect (and 
            (Location ?m1 ?c2) 
            (not(Location ?m1 ?c1))
            (Location ?m2 ?c2) 
            (not(Location ?m2 ?c1))
            (decrease (battery ?m1) 3)
            (decrease (battery ?m2) 3))
    )
    
    (:action Recharge
        :parameters (?m - MineBot ?c - cell ?s - chargestation)
        :precondition (and 
            (Location ?m ?c)
            (Location ?s ?c))
        :effect (and 
            (assign (battery ?m) 40))
    )
    

    (:action MineAlone
        :parameters (?m - MineBot ?c - cell ?o - ore)
        :precondition (and 
            (Location ?m ?c)
            (Location ?o ?c)
            (not(Block ?o))
            (Clear ?m)
            (not(large ?o))
            (not(Tandom ?m)))
        :effect (and 
            (not (Clear ?m)) 
            (Hold ?m ?o) 
            (not (Location ?o ?c)))
    )

    (:action MineTogether
        :parameters (?m1 - MineBot ?m2 - MineBot ?c - cell ?o - ore)
        :precondition (and 
            (Location ?m1 ?c)
            (Location ?m2 ?c)
            (Location ?o ?c)
            (not(Block ?o))
            (Clear ?m1)
            (Clear ?m2)
            (Large ?o)
            (not(= ?m1 ?m2)))
        :effect (and 
            (not (Clear ?m1)) 
            (Hold ?m1 ?o)
            (not (Clear ?m2)) 
            (Hold ?m2 ?o) 
            (Tandom ?m1)
            (Tandom ?m2)
            (not (Location ?o ?c)))
    )
    

    (:action Pickup
        :parameters (?m - MineBot ?i - object ?c - cell)
        :precondition (and 
            (Item ?i) 
            (Location ?i ?c) 
            (Location ?m ?c)
            (Clear ?m)
            (not(Tandom ?m)))
        :effect (and 
            (Hold ?m ?i) 
            (not(Clear ?m)) 
            (not(Location ?i ?c)))
    )

    (:action Drop
        :parameters (?m - MineBot ?i - object ?c - cell)
        :precondition (and 
            (Location ?m ?c) 
            (Hold ?m ?i) 
            (Item ?i)
            (not(Tandom ?m)))
        :effect (and 
            (Clear ?m)
            (Location ?i ?c)
            (not(Hold ?m ?i)))
    )
    
    (:action Break
        :parameters (?m - MineBot ?o - ore ?h - hammer ?c - cell)
        :precondition (and 
            (Location ?m ?c) 
            (Location ?o ?c)
            (Hold ?m ?h)
            (Block ?o)
            (not(Tandom ?m)))
        :effect (and 
            (not (Block ?o)))
    )

    (:action LiftOreAlone
        :parameters (?m - MineBot ?o - ore ?c - cell)
        :precondition (and 
            (Location Lift ?c)
            (Location ?m ?c)
            (Hold ?m ?o)
            (not(Large ?o))
            (not(Tandom ?m)))
        :effect (and 
            (OreGet ?o)
            (not(Hold ?m ?o))
            (Clear ?m))
    )

    (:action LiftOreTogether
        :parameters (?m1 - MineBot ?m2 - MineBot ?o - ore ?c - cell)
        :precondition (and 
            (Location Lift ?c)
            (Location ?m1 ?c)
            (Location ?m2 ?c)
            (Hold ?m1 ?o)
            (Hold ?m2 ?o)
            (Large ?o)
            (not(= ?m1 ?m2))
            (Tandom ?m1)
            (Tandom ?m2))
        :effect (and 
            (OreGet ?o)
            (not(Hold ?m1 ?o))
            (Clear ?m1)
            (not(Hold ?m2 ?o))
            (Clear ?m2)
            (not(Tandom ?m1))
            (not(Tandom ?m2)))

    )
    

    (:action PutOut
        :parameters (?m - MineBot ?c1 - cell ?c2 - cell ?e - extinguisher)
        :precondition (and 
            (Hold ?m ?e)
            (Connect ?c1 ?c2)
            (Location ?m ?c1)
            (Fire ?c2)
            (not(= ?c1 ?c2))
            (not(Tandom ?m)))
        :effect (and 
            (not(Fire ?c2)))
    )
      
)