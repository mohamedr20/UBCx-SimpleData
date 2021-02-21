;; cat-starter.rkt

; 
; PROBLEM:
; 
; Use the How to Design Worlds recipe to design an interactive
; program in which a cat starts at the left edge of the display 
; and then walks across the screen to the right. When the cat
; reaches the right edge it should just keep going right off 
; the screen.
; 
; Once your design is complete revise it to add a new feature,
; which is that pressing the space key should cause the cat to
; go back to the left edge of the screen. When you do this, go
; all the way back to your domain analysis and incorporate the
; new feature.
; 
; To help you get started, here is a picture of a cat, which we
; have taken from the 2nd edition of the How to Design Programs 
; book on which this course is based.
; 
; .
; 


(require 2htdp/image)
(require 2htdp/universe)

;; A cat that walks from the left to right across the screen

;; ======================
;; Constants

(define WIDTH 800)
(define HEIGHT 600)

(define MOVEMENT_SPEED 3)
(define CAT_Y_POSITION (/ HEIGHT 2))
(define CAT_X_POSITION 0)

(define BACKGROUND_SCENE (empty-scene WIDTH HEIGHT))
(define CAT_IMG .)

;; Data Definitons

;; Cat is Number
;; interp. the x position of the cat

(define C1 0)
(define C2 (/ WIDTH 2))
(define C3 WIDTH)

(define (fn-for-cat c)
  (... c))

;; Template rules used:
;; - atomic non-distinct: Number

;; =========================
;; Functions

;; WorldState -> WorldState
;; start the world with ...

(define (main ws)
  (big-bang ws ; Cat
    (on-tick tock)
    (to-draw render); Cat -> Cat
    (on-key handle-key))) ; Cat KeyEvent -> Image


;; Cat -> Cat
;; produce the next cat (+ MOVEMENT_SPEED)
;; !!!

(check-expect (tock C1) (+ C1 MOVEMENT_SPEED))
(check-expect (tock C2) (+ C2 MOVEMENT_SPEED))

(define (tock c)
  (+ c MOVEMENT_SPEED))


;; Cat -> Image
;; render the cat image on the screen at the right spot on the scene
;; !!!

(check-expect (render 4) (place-image CAT_IMG 4 CAT_Y_POSITION BACKGROUND_SCENE))

;; (define (render c) MTS); stub

(define (render c)
  (place-image CAT_IMG c CAT_Y_POSITION BACKGROUND_SCENE))


;; Cat KeyEvent -> Cat
;; reset cat to left edge when space key is pressed
(check-expect (handle-key 10 " " ) 0)
(check-expect (handle-key 10 "a") 10)
(check-expect (handle-key 0 " ") 0)

;; (define handle-key c ke) 0)

(define (handle-key c ke)
 (cond [(key=? ke " ") 0]
       [else c]))

(main 0)