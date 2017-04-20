#lang racket

(require rackunit)

(define (get-path) 1)

(check-eq? (get-path) 1)
(check-eq? 'a 'a)
(check-not-eq? "a" "b")
(check-= (/ 10 2) 5 0)


(require 2htdp/image)

(let sierpinski ([n 8])
  (if (zero? n)
      (triangle 2 'solid 'red)
      (let ([t (sierpinski (- n 1))])
        (freeze (above t (beside t t))))))


(let sierpinski ([n 8])
  (if (zero? n)
      (triangle 2 'solid 'red)
      (let ([t (sierpinski (- n 1))])
        (freeze (above t (beside t t))))))
