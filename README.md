# UBCx-SimpleData

## Chapter 1: Designing Functions


## Chapter 2: Designing Data

When the form of data to be represented is:

- is atomic (something like string, int, boolean, etc..): [Atomic data description](#Atomic)
- is numbers within a certain range: [Interval Data Description](#Interval)
- consists of a fixed number of distinct items: [Enumeration Data Description](#Enumeration)
- is comprised of 2 or more subclasses, at least one of which is not a distinct item: [Itemization Data Description](#Itemization) 
- consists of two or more items that naturally belong together: [Compound Data Description](#Compound)
- is naturally composed of different parts: [Reference Data Description](#Reference)
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

### Enumeration

### Itemization

### Compound

### Reference

### Self-Reference
