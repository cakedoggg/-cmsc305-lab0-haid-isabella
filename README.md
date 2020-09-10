# cmsc305-lab0-haid-isabella

 Name ih4184@bard.edu
 09/10/20
 CMSC 305: Design of Programming Languages
 Lab 0: Generating Expressions
 Collaboration Statement: I collaborated on this assigment with Yabo Detchou.
 Neither of us had specific roles.
 
 Warm-up Exercises:
 
 (define (mult a b)
  (if (= b 0)
    0
    (+ a (mult a (- b 1))
    )
  )
)

(define (fast-mult a b)
  (cond 
  ((= b 0)
   0)
  ((= (mod b 2) 0) 
  (fast-mult(+ a a)(bitwise-arithmetic-shift-right b 1)))
  (else 
  (+ a (fast-mult(+ a a)(bitwise-arithmetic-shift-right b 1))))
  )
)

(= (fast-mult 2 6) (mult 2 6) (* 2 6) )
 
 
