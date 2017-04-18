#lang racket

(require rackunit)

(check-eq? (+ 1 1) 2)

(check-eq? (sqr 3) 9)

(check-eq? (sin 0) 0)

(check-eq? (expt 2 3) 8)

(check-eq? (+ 2 (+ 3 4)) 9)

(check-eq? (+ 2 3 4) 9)

(check-eq? (+ 1 2 3 4 5 6 7 8 9) 45)

(check-eqv? "Hello, world!" "Hello, world!")

;; (check-eqv? (string-append "hello " "world") "hello world")

;; (check-eqv? (string-append "hello" " " "world") "hello world")

(check-eq? (and #true #true) #true)

(check-eq? (and #false #true) #false)

(check-eq? (> 10 9) true)
(check-eq? (< -1 0) true)

(check-eq? (string-length "hello world") 11)

(define (y x) (* x x))

(check-eq? (y 10) 100)


(define (sign x)
  (cond
    [(> x 0) 1]
    [(= x 0) 0]
    [(< x 0) -1]))

(check-eq? (sign 10) 1)
(check-eq? (sign 0) 0)
(check-eq? (sign -5) -1)


