;; exists?
(val-rec
 (forall ('a ) (function ((function ('a) bool) (list 'a)) bool))
 exists?
 (type-lambda ('a)
              (lambda (((function ('a) bool) p?)  ((list 'a) l))
                (if ((@ null? 'a) l)
                    #f
                    (if (p? ((@ car 'a) l))                           
                        #t
                        ((@ exists? 'a) p? ((@ cdr 'a) l)))))))

(define bool eq2 ((int x))
  ((@ = int) x 2))




;; all?
(val-rec
 (forall ('a ) (function ((function ('a) bool) (list 'a)) bool))
 all?
 (type-lambda ('a)
              (lambda (((function ('a) bool) p?) ((list 'a) l))
                (let ((notP? ((@ o 'a bool bool) not p?)))
                  (not ((@ exists? 'a) notP? l))))))



(let ((existsint? (@ exists? int))
      (allint?    (@ all? int))
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
