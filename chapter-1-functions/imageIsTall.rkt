;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname imageIsTall) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; 
; PROBLEM:
; 
; DESIGN a function that consumes an image and determines whether the 
; image is tall.
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.



;; Step 1: Determine Function signature, purpose statement & stub

;; Image -> Boolean
;; Given an image determine if the image height is larger than the image width

;; (define (imageIsTall img) true)


;; ===========================================


;; Step 2: Define examples, wrap each one in a check-expect

(check-expect (imageIsTall? (rectangle 2 12 "solid" "red")) true)
(check-expect (imageIsTall? (rectangle 10 3 "solid" "red")) false)
(check-expect (imageIsTall? (rectangle 5 5 "solid" "red")) false)

;; Step 3: Write the function template

;; (define (imageIsTall? img)
;;    (... img))


;; Step 4: Write the function

(define (imageIsTall? img)
  (> (image-height img) (image-width img)))


