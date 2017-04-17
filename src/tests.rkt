#lang racket

(require rackunit)

(define (get-path) 1)

(check-eq? (get-path) 1)
(check-eq? 'a 'a)
(check-not-eq? "a" "b")
(check-= (/ 10 2) 5 0)
