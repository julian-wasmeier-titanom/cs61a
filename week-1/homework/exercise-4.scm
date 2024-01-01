(define (ordered sen) 
    (display sen)
    (cond
        ((= (length sen) 1) #t)
        ((<= (first sen) (first (bf sen))) (ordered (bf sen)))
        (else #f)
    )
)

