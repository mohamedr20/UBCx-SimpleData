; Problem
; Design a function that pluralizes a given word. Assume adding s is enough to
; pluralize a word.



;; Step 1: Write the function signature, one-line purpose statement and a
;; function stub

;; Function Signature
;; String -> String

;; Purpose Statement
;; produces a plural version of the string provided

;; Stub
;; (define (plularize str) "dog") ; Create the stub

;=========================================

;; Step 2: Define examples, wrap each one in a check-expect.

(check-expect (plurlarize "dog") "dogs")
(check-expect (plurlarize "cat") "cats")
(check-expect (plurlarize "bug") "bugs")

;=========================================

;; Step 3: Write the function template

;; Function template for primitives( strings, numbers, etc..)

;; define (plurlarize str) (... str))
;=========================================

;; Step 4: Write the function

(define (plurlarize str) (string-append str "s"))

