(define (domain MineBot)
    (:types
        MineBot cell ore hammer rock lift
    ) 

    (:predicates
        (Connect ?c1 - cell ?c2 - cell)
        (Location ?x - object ?c - cell)
        (Hold ?m - MineBot ?h - object)
        (Clear ?y - MineBot)
        (Block ?o - ore)
        (Item ?i - object)
        (OreGet ?g - ore)
    )

    (:constants Lift - lift
    )

    (:action Move
        :parameters (?m - MineBot ?c1 - cell ?c2 - cell)
        :precondition (and (Location ?m ?c1) (Connect ?c1 ?c2)(not(= ?c1 ?c2)))
        :effect (and (Location ?m ?c2) (not(Location ?m ?c1)))
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

      
)
       