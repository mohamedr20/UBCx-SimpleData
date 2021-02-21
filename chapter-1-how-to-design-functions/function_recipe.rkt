
; Problem
; Design a function that takes in a number and produces twice that number
; and call the function double. Follow the HtDF recipe and show the stub and template.
;


;; Step 1: Write the function signature, one-line purpose statement and a
;; function stub
;; Function Signature
;; Number -> Number

;; Purpose Statement
;; produces 2 times the given number

;; Stub
;; (define (double n) 0) ; Create the stub

;=========================================

;; Step 2: Define examples, wrap each one in a check-expect.

(check-expect (double 3) (* 3 2))
(check-expect (double 4.5) (* 4.5 2))
(check-expect (double 0) (* 0 2))

;=========================================

;; Step 3: Write the function template

;; Function template for primitives( strings, numbers, etc..)

;; define (double n) (... n))
;=========================================

;; Step 4: Write the function

(define (double n) (* n 2))

