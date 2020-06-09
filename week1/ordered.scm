#lang simply-scheme
(define (ordered? nums)
  (cond ((empty? nums) #t)
        ((equal? (count nums) 1) #t)
        ((isincreasing? (first nums) (first (bf nums)))
         (ordered? (bf nums)))
        (else #f)))

(define (isincreasing? num1 num2)
  (<= num1 num2))


(ordered? '(1 2 3 4 5 1))
         
         