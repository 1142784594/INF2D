(define (problem MineBot-problem) (:domain MineBot)
(:objects
    MB - MineBot
    C1 - cell
    C2 - cell
    C3 - cell
    C4 - cell
    C5 - cell
    C6 - cell
    C7 - cell
    C8 - cell
    C9 - cell
    C10 - cell
    C11 - cell
    C12 - cell
    C13 - cell
    C14 - cell
    C15 - cell
    C16 - cell
    C17 - cell
    C18 - cell
    C19 - cell
    C20 - cell
    C21 - cell
    C22 - cell
    C23 - cell
    OA - ore
    OB - ore
    OC - ore
    H - hammer
    R1 - rock
    R2 - rock
    R3 - rock
    BS - chargestation

)

(:init
    (Connect C1 C5)
    (Connect C5 C1)
    (Connect C5 C4)
    (Connect C4 C5)
    (Connect C4 C9)
    (Connect C9 C4)
    (Connect C9 C8)
    (Connect C8 C9)
    (Connect C9 C13)
    (Connect C13 C9)
    (Connect C13 C14)
    (Connect C14 C13)
    (Connect C14 C15)
    (Connect C15 C14)
    (Connect C6 C5)
    (Connect C5 C6)
    (Connect C6 C10)
    (Connect C10 C6)
    (Connect C10 C15)
    (Connect C15 C10)
    (Connect C15 C16)
    (Connect C16 C15)
    (Connect C16 C17)
    (Connect C17 C16)
    (Connect C17 C19)
    (Connect C19 C17)
    (Connect C19 C22)
    (Connect C22 C19)
    (Connect C22 C21)
    (Connect C21 C22)
    (Connect C15 C18)
    (Connect C18 C15)
    (Connect C20 C21)
    (Connect C21 C20)
    (Connect C18 C20)
    (Connect C20 C18)
    (Connect C21 C23)
    (Connect C23 C21)  
    (Connect C11 C17)
    (Connect C17 C11)
    (Connect C11 C12)
    (Connect C12 C11)
    (Connect C11 C7)
    (Connect C7 C11)
    (Connect C7 C2)
    (Connect C2 C7)
    (Connect C2 C3)
    (Connect C3 C2)
    (Location MB C17)
    (Location Lift C23)
    (Location OA C1)
    (Location OB C3)
    (Location OC C10)
    (Location H C8)
    (Location R1 C8)
    (Location R2 C10)
    (Location R3 C3)
    (Location BS C12)
    (Block OC)
    (Block OB)
    (Clear MB)
    (Item H)
    (= (battery MB) 40)
)

(:goal (and
    (OreGet OA)
    (OreGet OB)
    (OreGet OC)

))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)