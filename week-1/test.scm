(define (recurse x)    
    (display x)
	(if (< x 5) 
        (recurse (+ x 1)) 
    )

)

(define (buzz n)
    (cond 
        ((member? 7 n) 'buzz)
          ((equal? (remainder n 7) 0) 'buzz)
        (else n)
    )

)
