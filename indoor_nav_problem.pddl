(define (problem indoor_nav_problem)
;; indoor_nav_domain.pddl
(:domain indoor-nav-strips-typed)
(:objects 
  ;; define the objects and its type
  pipo - robot
  door1 door2 door3 door4 door5 door6 door7 - door 
  room1 room2 room3 room4 room5 room6 room7 room8 room9 - room
  zone1 zone2 zone3 zone4 zone5 - zone
  elevator1 - elevator
  corridor1 corridor2 corridor3 - corridor
  object1 - object 
)
(:init
  ;; first floor
  (objectAt object1 zone2)
  (connected zone2 room1)
  (connected room1 zone2)
  (connected zone1 room1)
  (connected room1 zone1)

  (connected room1 door2)
  (connected door2 room1)
  (connected door2 room3)
  (connected room3 door2)
  (robotAt pepo room3)

  (connected room1 door1)
  (connected door1 room1)
  (connected door1 corridor1)
  (connected corridor1 door1)

  (connected corridor1 room2)
  (connected room2 corridor1)

  (connected zone3 room2)
  (connected room2 zone3)
  (connected zone4 room2)
  (connected room2 zone4)
  (connected zone5 room2)
  (connected room2 zone5)
  (connected room2 room4)
  (connected room4 room2)

  (connected corridor1 elevator)
  (connected elevator corridor1)

  ;; second floor
  (connected elevator corridor2)
  (connected corridor2 elevator)
  (elevatorAt elevator corridor2)
  

  ;; 2nd floor
  ;; connections with corridor2
  connected(elevator1 corridor2)
  connected(corridor2 elevator1)

  connected(corridor2 door3)
  connected(door3 corridor2)

  connected(corridor2 door4)
  connected(door4 corridor2)

  connected(corridor2 corridor3)
  connected(corridor3 corridor2)

  ;; connections with corridor 3
  connected(corridor3 door5)
  connected(door5 corridor3)

  connected(corridor3 door6)
  connected(door6 corridor3)

  connected(corridor3 door7)
  connected(door7 corridor3)

  ;; connections of the rooms with the doors of the 2nd floor

  connected(room6 door3)
  connected(door3 room6)

  connected(room5 door4)
  connected(door4 romm5)

  connected(room7 door5)
  connected(door5 room7)

  connected(room9 door6)
  connected(door6 room9)

  connected(room8 door7)
  connected(door7 room8)



)

(:goal  ;; to be achieved
  
  ;; our robot PIPO is a polite robot that respects intimacy of humans 
  ;; and it will leave ALL the doors closed
  (and

    (forall (?d - door) 
        (closed ?d)
    )

    objectAt(object1 room9)

    robotAt(pipo room8)



  )
  

)
