# UBCx-SimpleData

## Chapter 1: Designing Functions


## Chapter 2: Designing Data

When the form of data to be represented is:

- is atomic (something like string, int, boolean, etc..): [Atomic data description](#Atomic)
- is numbers within a certain range: [Interval Data Description](#Interval)
- consists of a fixed number of distinct items: [Enumeration Data Description](#Enumeration)
- is comprised of 2 or more subclasses, at least one of which is not a distinct item: [Itemization Data Description](#Itemization) 
- consists of two or more items that naturally belong together: [Compound Data Description](#Compound)
- is of arbitrary (unknown) size: [Self-Reference Data Description](#Self-Reference)

### Atomic
Use simple atomic data when the information to be represented is itself atomic in form. Such as the elapsed time since the start of the animation, 
the x coordinate of a car or the name of a cat.

```
;; Time is Natural
;; interp. number of clock ticks since start of game

(define START-TIME 0)
(define OLD-TIME 1000)

#;
(define (fn-for-time t)
  (... t))

;; Template rules used:
;;  - atomic non-distinct: Natural

```

### Interval

Use an interval when the information to be presented is within a range of numbers. Interger[0,10] is all the intergers 0 to 10 inclusive.

```
;; Countdown is Integer[0, 10]
;; interp. the number of seconds remaining to liftoff
(define C1 10)  ; start
(define C2 5)   ; middle
(define C3 0)   ; end
 
#;
(define (fn-for-countdown cd)
  (... cd))

;; Template rules used:
;;  - atomic non-distinct: Integer[0, 10]

```

### Enumeration
Use an enumeration when the information to be represented consists of a fixed number of distinct items, such as colors, letter grades etc. 

```
;; LightState is one of:
;;  - "red"
;;  - "yellow"
;;  - "green"
;; interp. the color of a traffic light

;; <examples are redundant for enumerations>
 
#;
(define (fn-for-light-state ls)
  (cond [(string=? "red" ls) (...)]
        [(string=? "yellow" ls) (...)]
        [(string=? "green" ls) (...)]))
;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct: "red"
;;  - atomic distinct: "yellow"
;;  - atomic distinct: "green"
```

For large enumerations follow this recipe:
```
(define (fn-for-key-event kevt)
  (cond [(key=? " " kevt) (...)]
        [else
         (...)]))
;; Template formed using the large enumeration special case
```

### Itemization
An itemization describes data comprised of 2 or more subclasses, at least one of which is not a distinct item. 

```
;; Bird is one of:
;;  - false
;;  - Number
;; interp. false means no bird, number is x position of bird

(define B1 false)
(define B2 3) 

#;
(define (fn-for-bird b)
  (cond [(false? b) (...)]
        [(number? b) (... b)]))
;; Template rules used:
;;  - one of: 2 cases
;;  - atomic distinct: false
;;  - atomic non-distinct: Number
```

### Compound
Use structures when two or more values naturally belong together. The define-struct goes at the beginning of the data definition, before the types comment.

```
(define-struct ball (x y))
;; Ball is (make-ball Number Number)
;; interp. a ball at position x, y 

(define BALL-1 (make-ball 6 10))

#;
(define (fn-for-ball b)
  (... (ball-x b)     ;Number
       (ball-y b)))   ;Number
;; Template rules used:
;;  - compound: 2 fields
```

### Self-Reference
When the information in the program's domain is of arbitrary size, a well-formed self-referential (or mutually referential) data definition is needed.

In order to be well-formed, a self-referential data definition must:

(i) have at least one case without self reference (the base case(s))
(ii) have at least one case with self reference

In some cases a types comment can have both self-reference and reference to another type.
```
(define-struct dot (x y))
;; Dot is (make-dot Integer Integer)
;; interp. A dot on the screen, w/ x and y coordinates.
(define D1 (make-dot 10 30))
#;
(define (fn-for-dot d)
  (... (dot-x d)   ;Integer
       (dot-y d))) ;Integer
;; Template rules used:
;;  - compound: 2 fields

;; ListOfDot is one of:
;;  - empty
;;  - (cons Dot ListOfDot)
;; interp. a list of Dot
(define LOD1 empty)
(define LOD2 (cons (make-dot 10 20) (cons (make-dot 3 6) empty)))
#;
(define (fn-for-lod lod)
  (cond [(empty? lod) (...)]
        [else
         (... (fn-for-dot (first lod))
              (fn-for-lod (rest lod)))]))

;; Template rules used:
;;  - one of: 2 cases
;;  - atomic distinct: empty
;;  - compound: (cons Dot ListOfDot)
;;  - reference: (first lod) is Dot 
;;  - self-reference: (rest lod) is ListOfDot
```
