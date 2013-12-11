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

;; all?
(val-rec
 (forall ('a ) (function ((function ('a) bool) (list 'a)) bool))
 all?
 (type-lambda ('a)
              (lambda (((function ('a) bool) p?) ((list 'a) l))
                (let ((notP? ((@ o 'a bool bool) not p?)))
                  (not ((@ exists? 'a) notP? l))))))

