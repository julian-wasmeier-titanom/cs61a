(define (accumulate term next a b combiner null)
       (if (> a b)
              null
              (combiner (term a) (accumulate term next (next a) b combiner null))
       )
)

(define (sum term next a b)
    (accumulate term next a b + 0)
)

(define (product term next a b)
    (accumulate term next a b * 1)
)

