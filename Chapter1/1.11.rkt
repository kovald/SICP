#lang racket
;; древовидная рекурсия
(define (f n)
(if (< n 3)
    n
  (+ (f (- n 3)) (f (- n 2)) (f (- n 1))))
)
;(f 5)

;; итерация
(define (f n) 
  (f-iter 2 1 0 n))

(define (f-iter a b c count)
  (if(= count 0)
        c
  (f-iter (+ a b c) a b ( - count 1))
  ))
;(f 5)