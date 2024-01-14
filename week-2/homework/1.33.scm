(define (filtered-accumulate term next a b combiner null predicate)
    (if (> a b)
        null
        (let ((term-of-a (term a)))
            (combiner (if (predicate term-of-a) term-of-a null) (filtered-accumulate term next (next a) b combiner null predicate))
        )
    
    )
)


; a)
(define (sum-of-squares-of-primes a b) 
    (filtered-accumulate identity inc a b + 0 prime?)
)

; b)
(define (rel-prime-product n) 
    (filtered-accumulate identity inc 1 (- n 1) * 1 (lambda (x) (= (gcd x n) 1)))
)

; from chapter 2
(define (gcd x y)
    (if 
        (= y 0)
        x
        (gcd y (remainder x y))

    )
)


