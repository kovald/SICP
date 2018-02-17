#lang racket
;Define a procedure that takes three numbers as arguments
;and returns the sum of the squares of the two larger numbers.

;Определите процедуру, которая принимает в качестве аргументов 
;три числа и возвращает сумму квадратов двух бОльших из них.


(define (square x) (* x x))

(define (sum x y)(+ (square x) (square y)))

(define (sum-of-max-num a b c)
  (cond ((and (or (< a b) (= a b)) (or (< a c) (= a c))) (sum b c))
        ((and (or (< b a) (= b a)) (or (< b c) (= b c))) (sum a c))
        (else (sum a b))))