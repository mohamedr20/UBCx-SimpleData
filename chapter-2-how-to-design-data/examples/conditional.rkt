;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname conditionalExample) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

; Problem
; Given an image, determine wheter a shape is "tall", "wide" or "square"

;; Step 1: Write the function signature, one-line purpose statement and a
;; function stub

;; Function Signature
;; Image -> String

;; Purpose Statement
;; Determine wheter a shape is "tall", "wide" or "square"

;; Stub
;; (define (aspect-ratio img) ") ; Create the stub

;=========================================

;; Step 2: Define examples, wrap each one in a check-expect.

;; (rectangle image-width image-height line-style color)

(define image1 (rectangle 10 20 "solid" "red"))
(define image2 (rectangle 20 20 "solid" "red"))
(define image3 (rectangle 20 10 "solid" "red"))


(check-expect (aspect-ratio image1) "tall")
(check-expect (aspect-ratio image2) "square")
(check-expect (aspect-ratio image3) "wide")

;=========================================

;; Step 3: Write the function template


;; define (aspect-ratio img)
;;  (... img))
;=========================================

;; Step 4: Write the function

;(define (aspect-ratio img)
;  (if (> (image-height img) (image-width img))
;      "tall"
;      (if (= (image-height img) (image-width img))
;          "square"
;          "wide")))

(define (aspect-ratio img)
  (cond [(> (image-height img) (image-width img)) "tall"]
        [(= (image-height img) (image-width img)) "square"]
        [else "wide"]))
        

