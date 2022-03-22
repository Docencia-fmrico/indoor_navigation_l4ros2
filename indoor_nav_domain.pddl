(define (domain indoor-nav-strips-typed)
(:requirements :strips :typing) ;; more to be added

(:types
  ;; types to be used
)

(:predicates 
  ;; for example: (robotAt ?r - robot ?p - planet)
)

(:action example action
  :parameters (?r - robot  ?s - starship ?p - planet) ;; args
  :precondition 
    (and 
      (robotAt ?r ?p)
      (starshipAt ?s ?p)
    )
  :effect 
    (and 
      (robotIn ?r ?s)
      (not (robotAt ?r ?p)))
    )


)

