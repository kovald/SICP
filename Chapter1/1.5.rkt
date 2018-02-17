#lang racket
;Ben Bitdiddle has invented a test to determine
;whether the interpreter he is faced with is using
;applicative-order evaluation or normal-order evaluation.
;He defines the following two procedures:

;Бен Битобор придумал тест для проверки интерпретатора на то,
;с каким порядком вычислений он работает, аппликативным или
;нормальным. Бен определяет такие две процедуры:
(define (p) (p))
(define (test x y)
(if (= x 0)
0
y))

;Затем он вычисляет выражение
;Then he evaluates the expression

;(test 0 (p))

;What behavior will Ben observe with an interpreter that uses
;applicative-order evaluation? What behavior will he observe
;with an interpreter that uses normal-order evaluation?
;Explain your answer. (Assume that the evaluation rule
;for the special form if is the same whether the interpreter
;is using normal or applicative order:
;The predicate expression is evaluated first, and
;the result determines whether to evaluate the consequent
;or the alternative expression.)

;Какое поведение увидит Бен, если интерпретатор использует
;аппликативный порядок вычислений? Какое поведение он увидит,
;если интерпретатор использует нормальный порядок? Объясните Ваш
;ответ. (Предполагается, что правило вычисления особой формы
;if одинаково независимо от того, какой порядок вычислений используется.
;Сначала вычисляется выражение-предикат, и результат
;определяет, нужно ли вычислять выражение-следствие или альтернативу.)

;Answer
;first there will be a substitution
; (test 0 (p)) and test condition (predicate), return 0.
; If applicative, first to calculate the value
; will "freeze", call it a endless cycle
; or the endless callback...
; Lisp uses applicative order of evaluation

;Ответ
; Если порядок нормальный - сначала будет подстановка
; (test 0 (p)) и проверка условия (предиката), возврат 0.
; Если аппликативный, сначала будет вычисляться значение
; и произойдет "зависание", назовем это бесконечным циклом
; или бесконечным вызовом...
; В Лиспе используется аппликативный порядок вычислений