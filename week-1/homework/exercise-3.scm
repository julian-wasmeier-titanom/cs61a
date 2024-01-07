(define (switch-with-first sen first?) 
    (if 
        (empty? sen) 
        '() 
        (sentence (replace (first sen) first?) (switch-with-first (butfirst sen) #f))
    )
)

(define (replace word first?)
    (cond
    ((member? word '(I me)) 'you)
    ((equal? word 'you) (if first? 'I 'me))
    (else word)
     )
    )

(define (switch sen) 
    (switch-with-first sen #t)
)

(switch '(you should wake me up))
