;;choose operations randomly between + * / expt.
(define (operator) (choose '(+ * / - expt)))

;;chooses randomly between + or *.
(define (specificOperator) (choose '(+ *)))

;;choose random number.If statement choose between 0 and 1. Checks if it is zero, then returns a number between 0 and 10. else If it is one, returns a number between -10 and 0. 
(define (number)
  (if (zero? (random-integer 2))
    (random-integer 11)
  (- (random-integer 11))))

;;returns random expressions. If statement choose between 0 and 1. Checks if it is zero, then returns a specific operator (+ or *) and 3 argurment, else if it one, returns a random operator (+ * / -) with 2 numbers as  argurment.
 (define (expression)  
   (if (zero? (random-integer 2))
     (list (specificOperator) (number) (number) (number))
   (list (operator) (number) (number))) )

;;chooses a random operator (+ * / -)  with two expressions as arguments.
(define (application)  (list (operator) (expression) (expression)))

;;calculates the lenght of a list.
(define (choose lst)
  (list-ref lst (random-integer (length lst))))


;;testing 
(application)
