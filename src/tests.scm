(define bool assert= (('a x) ('a y)) ((@ = 'a) x y))

((@ assert= int) 1 1)
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

(type-lambda ('a) 1)
(type-lambda ('a 'b 'c 'd) 1)

(define int add ((int x) (int y))
  (+ x y))

(add 3000 7485943)

(val cons-bool (@ cons bool))
(cons-bool #f '(#t #t))

(<= 1 2)
((@ list1 int) 1)
((@ != int) 1 2)

(val identity (type-lambda ('a) (lambda (('a x)) x)))
(@ '() int)
((@ identity int) 8008)
list1
((@ list1 int) 1)

(val e1 (type-lambda ('a) (lambda (('a x)) (if x (+ 1 1) (< 1 0)))))
;; type error
(val e2 (type-lambda ('a) (lambda (('a x)) (+ x 1))))
;; type error
(val e3 (and ((@ != int) 1 2) ((@ != sym) 'a 'b)))
;; type is bool
(val list3 (type-lambda ('a)
                        (lambda (('a x) ('a y) ('a z))
                          ((@ cons 'a) x ((@ list2 'a) y z)))))

(val e4 (let ((sym=a (((@ curry sym sym bool) (@ = sym)) 'a))
              (mapsym (@ map sym bool)))
          (mapsym sym=a '(a b c))))
;; (list bool)

(val e5 ((@ list3 sym) 'a 'b 'c))
;; (list sym)

(define bool eq2 ((int x))
  ((@ = int) x 2))


(let ((existsint? (@ exists? int))
      (allint? (@ all? int))
      (lst1 '(1 2 3 4 5))
      (lst2 '(2 2 2 2 2))
      (lst3 '(5)))
  ((@ list3 (list bool))
   ((@ list2 bool)
    (existsint? eq2 lst1)
    (allint? eq2 lst1))
   ((@ list2 bool)
    (existsint? eq2 lst2)
    (allint? eq2 lst2))
   ((@ list2 bool)
    (existsint? eq2 lst3)
    (allint? eq2 lst3))))
