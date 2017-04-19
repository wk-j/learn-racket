#lang racket

(require rackunit)

(check-eq? (+ 1 2) 3)

(check-eq? (+ 1 1) 2)

(check-eq? (string-append "1" "2") "12")

(define prefix "hello")
(define suffix "world")

(check-eq? (string-length prefix) 5)
(check-eq? (string-length suffix) 5)

(check-eq?
 (string-length (number->string 42))
 2)


(check-eq?
 (number? 4) #true)

(check-eq?
 (number? pi) #true)

(check-eq?
 (number? "fortytwo") #false)
