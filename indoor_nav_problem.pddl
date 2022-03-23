(define (problem indoor_nav_problem)
;; indoor_nav_domain.pddl
(:domain indoor-nav-strips-typed)
(:objects 
  ;; define the objects and its type
 
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
  

)

(:goal  ;; to be achieved
 ;; e.g: (and (robotAt r2d2 tatooine)(robotAt c3p0 naboo)))

)
