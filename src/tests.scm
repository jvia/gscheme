1
#t
'()
'(1)
'(1 #t)
'(1 2)
'((1) (2 3))
'((1) (4) (2 3))
'((1) () (2 3))
(if #t (begin 1) (begin 2))
(if #t (begin 1) (begin #f))
(while #f 2)
(val a 2)
(set a 5)
a

;; Let test
(let ((x 2) (y 3))
  (+ x y))

;; Let start
(let* ((x 2)
       (y (+ x 2)))
  (+ x y))

(lambda ((int x))
  (+ x x)) 

(+ 2 2)
(- 3 1)
(= 2 3)
((@ = int)  1 1)
((@ = bool) #t #t)

(val-rec int a 1979)
(val-rec (list int) b '(1 2 3 4))

(define int add ((int x) (int y))
  (+ x y))

(add 3000 7485943)

(val cons-bool (@ cons bool))
(cons-bool #f '(#t #t))
