#lang racket
(define (pascal x y)
  (cond ((or (= x 1) (= y 1) (= x y)) 1)
        ((or (< x 1) (> x y)) 0)
        (else (+ (pascal (- x 1)(- y 1)) (pascal x (- y 1))))
        )
)