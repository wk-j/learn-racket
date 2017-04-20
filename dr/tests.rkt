#lang racket

(define HEIGHT 60)

(define (picture-of-racket.v4 h)
 (cond
  [(<=h (- HEIGHT (/ image-height ROCKET)) 2
        (place-image ROCKET 50 h
                     (empty)))]))
