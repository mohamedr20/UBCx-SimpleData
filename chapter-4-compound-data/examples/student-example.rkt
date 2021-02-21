;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname student-example) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; student-starter.rkt

;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; Design a data definition to help a teacher organize their next field trip. 
; On the trip, lunch must be provided for all students. For each student, track 
; their name, their grade (from 1 to 12), and whether or not they have allergies.
; 


(define-struct student (name grade hasAllergy))

;; Student is one of (make-student String Interval[0,12] Boolean)
;; interp. a student that is still in grade school

(define S1 (make-student "Alan" 7 true))
(define S2 (make-student "Steve" 3 false))
(define S3 (make-student "Bob" 9 false))
(define S4 (make-student "Quincy" 6 true))

(define (fn-for-student s)
  (... (student-name s)
       (student-grade s)
       (student-hasAllergy s)))

;; Template rules used:
;; Compound: 3 fields

;; =================
;; Functions:

; 
; PROBLEM B:
; 
; To plan for the field trip, if students are in grade 6 or below, the teacher 
; is responsible for keeping track of their allergies. If a student has allergies, 
; and is in a qualifying grade, their name should be added to a special list. 
; Design a function to produce true if a student name should be added to this list.
; 


;; Student -> Boolean

; (define (track-student s) true)

(check-expect (track-student? S1) false)
(check-expect (track-student? S2) false)
(check-expect (track-student? S3) false)
(check-expect (track-student? S4) true)

;; <Imported from data definition>

(define (track-student? s)
  (and ( <= (student-grade s) 6)
       (student-hasAllergy s)))


