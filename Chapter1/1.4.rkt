#lang racket
;Observe that our model of evaluation allows for combinations
;whose operators are compound expressions.
;Use this observation to describe the behavior
;of the following procedure:

;Заметим, что наша модель вычислений разрешает существование комбинаций,
; операторы которых — составные выражения. С помощью этого наблюдения
;опишите, как работает следующая процедура:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;If number 'b' more than zero, then return '+' and a+b,
;else return '-' and a-b. That's all...

;Если число "b" больше нуля, тогда вернется "+" и сумма a+b
;если b меньше нуля, тогда а-b...ы