(define (problem MineBot-problem) (:domain MineBot)
(:objects
    MB1 - MineBot
    MB2 - MineBot
    C1 - cell
    C2 - cell
    C3 - cell
    C4 - cell
    Entrance - cell
    CaveOne - cell
    O1 - cell
    O2 - cell
    O3 - cell
    O4 - cell
    O5 - cell
    O6 - cell
    O7 - cell
    O8 - cell
    O9 - cell
    O10 - cell
    O11 - cell
    O12 - cell
    O13 - cell
    O14 - cell
    O15 - cell
    O16 - cell
    O17 - cell
    O18 - cell
    O19 - cell
    T1 - cell
    T2 - cell
    T3 - cell
    T4 - cell
    T5 - cell
    T6 - cell
    T7 - cell
    T8 - cell
    T9 - cell
    T10 - cell
    T11 - cell
    T12 - cell
    T13 - cell
    T14 - cell
    T15 - cell
    T16 - cell
    T17 - cell
    T18 - cell
    T19 - cell
    OA - ore
    OB - ore
    H1 - hammer
    H2 - hammer
    CaveTwo - cell
    RO1 - rock
    RO2 - rock
    RO3 - rock
    RO4 - rock
    RO5 - rock
    RO6 - rock
    RO7 - rock
    RO8 - rock
    RO9 - rock
    RO10 - rock
    RO11 - rock
    RO12 - rock
    RO13 - rock
    RO14 - rock
    RO15 - rock
    RO16 - rock
    RO17 - rock
    RO18 - rock
    RO19 - rock
    RT1 - rock
    RT2 - rock
    RT3 - rock
    RT4 - rock
    RT5 - rock
    RT6 - rock
    RT7 - rock
    RT8 - rock
    RT9 - rock
    RT10 - rock
    RT11 - rock
    RT12 - rock
    RT13 - rock
    RT14 - rock
    RT15 - rock
    RT16 - rock
    RT17 - rock
    RT18 - rock
    RT19 - rock
    BS1 - chargestation
    BS2 - chargestation
    E - extinguisher

)

(:init
    (Connect C1 C2)
    (Connect C2 C1)
    (Connect C1 Entrance)
    (Connect Entrance C1)
    (Connect Entrance C2)
    (Connect C2 Entrance)
    (Connect Entrance C3)
    (Connect C3 Entrance)
    (Connect Entrance C4)
    (Connect C4 Entrance)
    (Connect O1 CaveOne)
    (Connect CaveOne O1)
    (Connect CaveOne O5)
    (Connect O5 CaveOne)
    (Connect O1 O4)
    (Connect O4 O1) 
    (Connect O2 O6)
    (Connect O6 O2)
    (Connect O2 CaveOne)
    (Connect CaveOne O2)
    (Connect O3 O2)
    (Connect O2 O3)
    (Connect O3 O7)
    (Connect O7 O3)
    (Connect O4 O5)
    (Connect O5 O4)
    (Connect O4 O8)
    (Connect O8 O4)
    (Connect O5 O9)
    (Connect O9 O5)
    (Connect O5 O6)
    (Connect O6 O5)
    (Connect O6 O10)
    (Connect O10 O6)
    (Connect O6 O7)
    (Connect O7 O6)
    (Connect O7 O11)
    (Connect O11 O7)
    (Connect O8 O12)
    (Connect O12 O8)
    (Connect O8 O9)
    (Connect O9 O8)
    (Connect O9 O13)
    (Connect O13 O9)
    (Connect O9 O10)
    (Connect O10 O9)
    (Connect O10 O14)
    (Connect O14 O10)
    (Connect O10 O11)
    (Connect O11 O10)
    (Connect O11 O15)
    (Connect O15 O11)
    (Connect O12 O16)
    (Connect O16 O12)
    (Connect O12 O13)
    (Connect O13 O12)
    (Connect O13 O17)
    (Connect O17 O13)
    (Connect O13 O14)
    (Connect O14 O13)
    (Connect O14 O18)
    (Connect O18 O14)
    (Connect O15 O19)
    (Connect O19 O15)
    (Connect O16 O17)
    (Connect O17 O16)
    (Connect O17 O18)
    (Connect O18 O17)
    (Connect O18 O19)
    (Connect O19 O18)

    (Connect T1 CaveTwo)
    (Connect CaveTwo T1)
    (Connect CaveTwo T5)
    (Connect T5 CaveTwo)
    (Connect T1 T4)
    (Connect T4 T1) 
    (Connect T2 T6)
    (Connect T6 T2)
    (Connect T2 CaveTwo)
    (Connect CaveTwo T2)
    (Connect T3 T2)
    (Connect T2 T3)
    (Connect T3 T7)
    (Connect T7 T3)
    (Connect T4 T5)
    (Connect T5 T4)
    (Connect T4 T8)
    (Connect T8 T4)
    (Connect T5 T9)
    (Connect T9 T5)
    (Connect T5 T6)
    (Connect T6 T5)
    (Connect T6 T10)
    (Connect T10 T6)
    (Connect T6 T7)
    (Connect T7 T6)
    (Connect T7 T11)
    (Connect T11 T7)
    (Connect T8 T12)
    (Connect T12 T8)
    (Connect T8 T9)
    (Connect T9 T8)
    (Connect T9 T13)
    (Connect T13 T9)
    (Connect T9 T10)
    (Connect T10 T9)
    (Connect T10 T14)
    (Connect T14 T10)
    (Connect T10 T11)
    (Connect T11 T10)
    (Connect T11 T15)
    (Connect T15 T11)
    (Connect T12 T16)
    (Connect T16 T12)
    (Connect T12 T13)
    (Connect T13 T12)
    (Connect T13 T17)
    (Connect T17 T13)
    (Connect T13 T14)
    (Connect T14 T13)
    (Connect T14 T18)
    (Connect T18 T14)
    (Connect T15 T19)
    (Connect T19 T15)
    (Connect T16 T17)
    (Connect T17 T16)
    (Connect T17 T18)
    (Connect T18 T17)
    (Connect T18 T19)
    (Connect T19 T18)

    (HardRock O4)
    (HardRock O5)
    (HardRock O6)
    (HardRock O7)
    (HardRock O8)
    (HardRock O9)
    (HardRock O10)
    (HardRock O11)
    (HardRock O12)
    (HardRock O13)
    (HardRock O14)
    (HardRock O15)
    (HardRock O16)
    (HardRock O17)
    (HardRock O18)
    (HardRock O19)
    (HardRock T4)
    (HardRock T5)
    (HardRock T6)
    (HardRock T7)
    (HardRock T8)
    (HardRock T9)
    (HardRock T10)
    (HardRock T11)
    (HardRock T12)
    (HardRock T13)
    (HardRock T14)
    (HardRock T15)
    (HardRock T16)
    (HardRock T17)
    (HardRock T18)
    (HardRock T19)

    (Location RO4 O4)
    (Location RO5 O5)
    (Location RO6 O6)
    (Location RO7 O7)
    (Location RO8 O8)
    (Location RO9 O9)
    (Location RO10 O10)
    (Location RO11 O11)
    (Location RO12 O12)
    (Location RO13 O13)
    (Location RO14 O14)
    (Location RO15 O15)
    (Location RO16 O16)
    (Location RO17 O17)
    (Location RO18 O18)
    (Location RO19 O19)

    (Location RT4 T4)
    (Location RT5 T5)
    (Location RT6 T6)
    (Location RT7 T7)
    (Location RT8 T8)
    (Location RT9 T9)
    (Location RT10 T10)
    (Location RT11 T11) 
    (Location RT12 T12)
    (Location RT13 T13)
    (Location RT14 T14)
    (Location RT15 T15)
    (Location RT16 T16)
    (Location RT17 T17)
    (Location RT18 T18)
    (Location RT19 T19)

    (Location MB1 Entrance)
    (Location MB2 Entrance)
    (Location TrainOne Entrance)
    (Location TrainTwo Entrance)
    (Location LiftORE C1)
    (Location OA O17)
    (Location OB T5)
    (Location H1 C4)
    (Location H2 C4)
    (Location E C4)
    (Location BS1 O1)
    (Location BS2 T1)
    (Clear MB1)
    (Clear MB2)
    (TrainOne Entrance)
    (TrainTwo Entrance)
    (TrainOne CaveOne)
    (TrainTwo CaveTwo)
    (Fire T1)
    (Item H1)
    (Item H2)
    (Item E)
    (= (battery MB1) 40)
    (= (battery MB2) 40)
    (Large OB)

)

(:goal (and
    (OreGet OA)
    (RockGet RO17)
    (RockGet RO13)
    (RockGet RO9)
    (RockGet RO5)
    (OreGet OB)
    (RockGet RT5)
    (NoFire)


))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)