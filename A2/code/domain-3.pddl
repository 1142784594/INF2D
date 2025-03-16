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
    )

    (:functions
        (battery ?m - MineBot)
    )

    (:constants Lift - lift)

    (:action MoveClear
        :parameters (?m - MineBot ?c1 - cell ?c2 - cell)
        :precondition (and (Location ?m ?c1) (Connect ?c1 ?c2)(Clear ?m)(>= (battery ?m) 1)(not(Fire ?c2))(not(= ?c1 ?c2)))
        :effect (and (Location ?m ?c2) (not(Location ?m ?c1)) (decrease (battery ?m) 1))
    )

    (:action MoveHold
        :parameters (?m - MineBot ?c1 - cell ?c2 - cell)
        :precondition (and (Location ?m ?c1) (Connect ?c1 ?c2)(not(Clear ?m))(>= (battery ?m) 3)(not(Fire ?c2))(not(= ?c1 ?c2)))
        :effect (and (Location ?m ?c2) (not(Location ?m ?c1)) (decrease (battery ?m) 3))
    )
    
    (:action Recharge
        :parameters (?m - MineBot ?c - cell ?s - chargestation)
        :precondition (and (Location ?m ?c)(Location ?s ?c))
        :effect (and (assign (battery ?m) 40))
    )
    

    (:action Mine
        :parameters (?m - MineBot ?c - cell ?o - ore)
        :precondition (and (Location ?m ?c)(Location ?o ?c)(not(Block ?o))(Clear ?m))
        :effect (and (not (Clear ?m)) (Hold ?m ?o) (not (Location ?o ?c)))
    )

    (:action Pickup
        :parameters (?m - MineBot ?i - object ?c - cell)
        :precondition (and (Item ?i) (Location ?i ?c) (Location ?m ?c)(Clear ?m))
        :effect (and (Hold ?m ?i) (not(Clear ?m)) (not(Location ?i ?c)))
    )

    (:action Drop
        :parameters (?m - MineBot ?i - object ?c - cell)
        :precondition (and (Location ?m ?c) (Hold ?m ?i) (Item ?i))
        :effect (and (Clear ?m)(Location ?i ?c)(not(Hold ?m ?i)))
    )
    
    (:action Break
        :parameters (?m - MineBot ?o - ore ?h - hammer ?c - cell)
        :precondition (and (Location ?m ?c) (Location ?o ?c)(Hold ?m ?h)(Block ?o))
        :effect (and (not (Block ?o)))
    )

    (:action LiftOre
        :parameters (?m - MineBot ?o - ore ?c - cell)
        :precondition (and (Location Lift ?c)(Location ?m ?c)(Hold ?m ?o))
        :effect (and (OreGet ?o)(not(Hold ?m ?o))(Clear ?m))
    )

    (:action PutOut
        :parameters (?m - MineBot ?c1 - cell ?c2 - cell ?e - extinguisher)
        :precondition (and (Hold ?m ?e)(Connect ?c1 ?c2)(Location ?m ?c1)(Fire ?c2)(not(= ?c1 ?c2)))
        :effect (and (not(Fire ?c2)))
    )
      
)