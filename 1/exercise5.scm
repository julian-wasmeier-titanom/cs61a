(define (ends-e sen) 
    (cond 
        ((empty? sen ) '())
        ((equal? (last (first sen)) 'e) (sentence (first sen) (ends-e (bf sen))))
        (else (ends-e (bf sen)))
    )
)

