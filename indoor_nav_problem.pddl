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
  ;; init situation defined by the predicates
  ;; (robotAt r2d2 naboo)
  ;; (starshipAt milleniumFalcon alderaan)

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
