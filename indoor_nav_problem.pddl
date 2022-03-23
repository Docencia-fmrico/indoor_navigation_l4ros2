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
