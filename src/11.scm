;; exists?
(val-rec (forall ('a ) (function ((function ('a) bool) (list 'a)) bool)) exists?
         (type-lambda ('a)
                 (lambda (((function ('a) bool) p?)  ((list 'a) l))
                   (if ((@ null? 'a) l)
                       #f
                       (if (p? ((@ car 'a) l))                           
                           #t
                           ((@ exists? 'a) p? ((@ cdr 'a) l)))))))

(define bool eq2 ((int x))
  ((@ = int) x 2))

(let ((existsint? (@ exists? int)))
  (existsint? eq2 '(1 3 3 4 3 1)))

;; all?


;; (val-rec (forall ('a) (function ((function ('a) bool) (list 'a)) (list 'a))) filter
;;          (type-lambda ('a)
;;                  (lambda (((function ('a) bool) p?)  ((list 'a) l))
;;                    (if ((@ null? 'a) l)
;;                        (@ '() 'a)
;;                        (if (p? ((@ car 'a) l))                           
;;                            ((@ cons 'a) ((@ car 'a) l) ((@ filter 'a) p? ((@ cdr 'a) l)))
;;                            ((@ filter 'a) p? ((@ cdr 'a) l)))))))

;; (define filter (p? xs)
;;   (if (null? xs)
;;       '()
;;       (if (p? (car xs))
;;           (cons (car xs) (filter p? (cdr xs)))
;;           (filter p? (cdr xs)))))
