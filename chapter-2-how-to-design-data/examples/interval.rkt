;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname interval) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; PROBLEM:
; 
; Imagine that you are designing a program to manage ticket sales for a
; theatre. (Also imagine that the theatre is perfectly rectangular in shape!) 
; 
; Design a data definition to represent a seat number in a row, where each 
; row has 32 seats. (Just the seat number, not the row number.)
;  



;; SeatNum is Natural[1, 32]
;; interp. the assigned seat number in the theatre, 1 and 32 are aisle seats

(define SeatNum1 1)  ; aisle seat
(define SeatNum2 16)   ; middle seat
(define SeatNum3 32)   ; aisle seat

(define (fn-for-seat-num sn)
  (... sn))

;; Template rules used: Atomic non-distinct


; PROBLEM:
; 
; Using the SeatNum data definition below design a function
; that produces true if the given seat number is on the aisle.


;; Step 1: Write function signature, purpose and stub
;; Seat Number -> Boolean
;; If a seat is an aisle seat, return true
;; (define (validate-seat sn) true);

;; Step 2: Wrap some examples in a check-expect

(check-expect (aisle? SeatNum1) true)
(check-expect (aisle? SeatNum2) false)
(check-expect (aisle? SeatNum3) true)

(define (aisle? sn)
  (or (= sn 1)
      (= sn 32)))


    
