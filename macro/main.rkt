#lang racket

(require rackunit)

(define-syntax foo
 (lambda (stx)
   (syntax "I am foo")))


(define-syntax (also-foo stx)
 (syntax "I am also foo"))

(define-syntax (quoted-foo stx)
 #'"I am also foo, using #' instead of syntax")

(define-syntax (say-hi stx)
 #'(displayln "hi"))

(define-syntax (show-me stx)
 (println stx)
 #'(void))

(define stx #'(if x (list "true") #f))

(foo)
(also-foo)
(quoted-foo)
(say-hi)
(show-me '(+ 1 2))
(show-me "123")

(syntax-source stx)
(syntax-line stx)
(syntax-column stx)
(syntax->datum stx)
(syntax->list stx)


(define-syntax (reverse-me stx)
 (datum->syntax stx (reverse (cdr (syntax->datum stx)))))

;;(check-eq?
;; (reverse-me "backwords" "im" "i" values)
;; (values "i" "im" "backwords"))

;; side effect

(define (out-if condition true-expr false-expr)
 (cond [condition true-expr]
       [else false-expr]))

(define (display-and-return x)
  (displayln x)
  x)


(out-if #t "true" "false")

(out-if #t
 (display-and-return "true")
 (display-and-return "false"))

(println "-----")


;; no side effect

(define-syntax (out-if-v2 stx)
 (define xs (syntax->list stx))
 (datum->syntax stx `(cond [,(cadr xs), (caddr xs)]
                           [else, (cadddr xs)])))

(out-if-v2 #t
 (display-and-return "true")
 (display-and-return "false"))


;; http://www.greghendershott.com/fear-of-macros/all.html#%28part._.Preface%29









