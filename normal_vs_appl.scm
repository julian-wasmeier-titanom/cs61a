(load "programs_lecture/1.1/order.scm")
(def (f a b)
    (+ (g a) b)
)

(def (g x) 
    (* 3 x)
)

(def (zero x) (- x x))

(display "applicative")
(applic (f (+ 2 3) (- 15 6)))
(display "\n")

(display "normal")
(normal (f (+ 2 3) (- 15 6)))
(display "\n")

(display "applicative")
(applic (zero (random 10)))
(display "\n")

(display "normal")
(normal (zero (random 10)))
(display "\n")

