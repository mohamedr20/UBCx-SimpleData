; 
; PROBLEM:
; 
; DESIGN a function called area that consumes the length of one side 
; of a square and produces the area of the square.
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 



;; Step 1: Write function signature along w/ single line purpose statement
;; and the stub

;; Number -> Number
;; Given the length of a square, return the area of that square

;; (define (area n) 0)

;; ========================================

;; Step 2: Define examples, wrap each one in a check-expect

(check-expect (area 2) (* 2 2))
(check-expect (area 9) (* 9 9))
(check-expect (area 10) (* 10 10))

;; ========================================

;; Step 3: Write the function template

;; (define (area n)
  ;; (...n))

;; ========================================

;; Step 4: Write the function

(define (area n) (* n n))
