#lang racket
;; Translate the following expression into prefix form
;; Переведите следующее выражение в префиксную форму:

(/ (+ 4 5 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))