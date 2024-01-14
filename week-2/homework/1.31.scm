(define (product term next a b)
       (if (> a b) 
              1
              (* (term a) (product term next (next a) b)))
) 

(define (sum term next a b)
       (if (> a b) 
              0
              (* (term a) (product term next (next a) b))
       )
) 


(define (identity x) x)
(define (inc x) (1+ x))

(define (factorial a b)
       (product identity inc a b)
)

(define (square x)
       (* x x)
)


; This doesn't work, it would add 12 twice to the numerator
(define (approx-pi) 
       (define (inc2 x) (inc (inc x)))
       (define top-product (* (product square inc2 4 10) 2))
       (define bottom-product (product square inc2 3 9))
       (print top-product)
       (print bottom-product)
       
       (* 4 (/ top-product bottom-product))
)



; This works
(define (approx-pi-2 n)
       (define (term n) 
              (if (even? n)
                     (+ n 2)
                     (+ n 1)
              )
       )

        (product term inc 1 n)
)

