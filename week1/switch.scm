#lang simply-scheme
(define (switch sent)
  (switchtry sent sent))

(define (firstPerson? wd)
  (member? wd '(i I me)))

(define (secondPerson? wd)
  (member? wd '(you You)))

(define (start? sent wd)
  (equal? wd (first sent)))

(define (switchtry orig sent)
  (cond ((empty? sent) '())
    ((firstPerson? (first sent))
         (se 'you (switchtry orig (bf sent))))
        ((and (start? orig (first sent)) (secondPerson? (first sent)))
         (se 'I (switchtry orig (bf sent))))
        ((secondPerson? (first sent))
         (se 'me (switchtry orig (bf sent))))
        (else (se (first sent) (switchtry orig (bf sent))))))


 (switch '(You told me that I should wake you up))




         
