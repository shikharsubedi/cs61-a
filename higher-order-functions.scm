#lang simply-scheme
(define (buzz n)
  (cond ((equal? (remainder n 7) 0) 'buzz)
        ((member? 7 n) 'buzz)
        (else n)))


(define (fizzbuzz n)
  (cond ((and (multipleof? 3 n) (multipleof? 5 n)) 'fizzbuzz)
        ((multipleof? 3 n) 'fizz)
        ((multipleof? 5 n) 'buzz)
        (else n)))

(define (multipleof? x y)
  (equal? (remainder y x) 0))


(fizzbuzz 22)

(define (evens nums)
  (cond ((empty? nums) '())
    ((multipleof? 2 (first nums))
         (se (first nums) (evens (bf nums))))
        (else (evens (bf nums)))))

(evens '(2 3 4 5 6 7 8))

(define (keep pred sent)
  (cond ((empty? sent) '())
        ((pred (first sent))
         (se (first sent) (keep pred (bf sent))))
        (else (keep pred (bf sent)))))


(define (even? n)
  (multipleof? 2 n))

(keep even? '(2 4 5 6 7 8))

(define (ewords? wd)
  (member? 'e wd))

(keep (lambda (wd) (member? wd '(i you he she they we us his her him me them their)))
      '(you and me are good friends with them))

(keep ewords? '(got the best time of my life))

(lambda (x) (* x x))

(define (square x)
  (* x x))

(define (squares nums)
  (if (empty? nums) '()
  (se (square (first nums)) (squares (bf nums)))))


(squares '(2 3 4 5 6))

(define (every ops nums)
  (if (empty? nums) '()
      (se (ops (first nums)) (every ops (bf nums)))))

(every (lambda (y) (* y y y)) '(2 3 5))
  

               
        



