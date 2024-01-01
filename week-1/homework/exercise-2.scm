(define (square n) 
    (* n n))

(define (squares sen) 
    (if (empty? sen) '() (sentence (square (first sen)) (squares (butfirst sen))))
)
