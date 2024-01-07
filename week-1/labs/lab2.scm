; 1. (define a 3) => 3

;     (define b (+ a 1)) => 4

;     (+ a b (* a b)) => 19

;     (= a b) => #f
    
;     (if (and (> b a) (< b (* a b)))
;         b
;       a) => 4

;     ... => 20
    
;     ... => 6
    
;     ... => 16
    
;     ... => 7

; 3.

(define (max x y) 
  (if (> x y) x y)
)

(define (min x y) 
  (if (< x y) x y)
)



(define (sumOfLargerTwo x y z) 
  (+ (square (max x y)) (square (max (min x y) z)))
)


(define ( dupls-removed))