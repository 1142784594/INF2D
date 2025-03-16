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
    C24 - cell
    C25 - cell
    C26 - cell
    C27 - cell
    C28 - cell
    C29 - cell
    C30 - cell
    C31 - cell
    C32 - cell
    C33 - cell 
    C34 - cell
    C35 - cell
    C36 - cell
    C37 - cell
    C38 - cell
    C39 - cell
    C40 - cell
    C41 - cell
    OA - ore
    OB - ore
    OC - ore
    OD - ore
    OE - ore
    OF - ore
    OG - ore
    OH - ore
    OJ - ore
    OK - ore
    H - hammer

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
    (Connect C24 C1)
    (Connect C1 C24)
    (Connect C24 C25)
    (Connect C25 C24)
    (Connect C25 C2)
    (Connect C2 C25)
    (Connect C26 C27)
    (Connect C27 C26)
    (Connect C13 C26)
    (Connect C26 C13)
    (Connect C27 C28)
    (Connect C28 C27)
    (Connect C27 C29)
    (Connect C29 C27)
    (Connect C12 C30)
    (Connect C30 C12)
    (Connect C30 C31)
    (Connect C31 C30)
    (Connect C31 C32)
    (Connect C32 C31)
    (Connect C33 C32)
    (Connect C32 C33)
    (Connect C33 C34)
    (Connect C34 C33)
    (Connect C33 C35)
    (connect C35 C33)
    (Connect C8 C36)
    (Connect C36 C8)
    (Connect C36 C37)
    (Connect C37 C36)
    (Connect C37 C38)
    (Connect C38 C37)
    (Connect C38 C39)
    (Connect C39 C38)
    (Connect C39 C40)
    (Connect C40 C39)
    (Connect C39 C41)
    (Connect C41 C39)
    (Location MB C17)
    (Location Lift C23)
    (Location OA C1)
    (Location OB C3)
    (Location OC C10)
    (location OD C25)
    (Location OE C28)
    (Location OF C29)
    (Location OG C34)
    (Location OH C35)
    (Location OJ C40)
    (Location OK C41)
    (Location H C8)
    (Clear MB)
    (Block OC)
    (Block OB)
    (Block OD)
    (Block OF)
    (Block OH)
    (Block OK)
    (Item H)
)

(:goal (and
    (OreGet OA)
    (OreGet OB)
    (OreGet OC)
    (OreGet OD)
    (OreGet OE)
    (OreGet OF)
    (OreGet OG)
    (OreGet OH)
    (OreGet OJ)
    (OreGet OK)

))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
