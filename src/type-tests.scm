(val e1 (type-lambda ('a) (lambda (('a x)) (if x (+ 1 1) (< 1 0)))))
;; type error
(val e2 (type-lambda ('a) (lambda (('a x)) (+ x 1))))
;; type error
(val e3 (and ((@ != int) 1 2) ((@ != sym) 'a 'b)))
;; type is bool

(val e4 (let ((sym=a (((@ curry sym sym bool) (@ = sym)) 'a))
              (mapsym (@ map sym bool)))
          (mapsym sym=a '(a b c))))
;; (list bool)

(val e5 ((@ list3 sym) 'a 'b 'c))
;; (list sym)

