;;;;
;; Dependencies: get.lisp
;;;;


(defun is-lower (p1 p2)
	(cond
  	((null (first p2))T)
     	((< (first(rest(rest p1))) (first(rest(rest p2)))) T)
		((= (first(rest(rest p1))) (first(rest(rest p2)))) 
		(is-lower (cons 'notnil (cons nil (cons (first(rest p1)) nil)))(cons 'notnil (cons nil (cons (first(rest p2)) nil)))))
  )
)

(defun find-lowest (graph)
	(find-lowest-helper graph '(nil nil nil))
)

(defun find-lowest-helper (graph lowest)
	(cond
		((null graph) lowest)
		((is-lower(first graph) lowest)(find-lowest-helper(rest graph)(first graph)))
		(T(find-lowest-helper(rest graph)lowest))
	)
)

(defun find-angles (px graph)
  (find-angles-helper px graph nil)
)

(defun find-angles-helper (px graph angleList)
     (cond ((null graph) angleList)
		((eql (get-name graph) (first px))(find-angles-helper px (rest graph) angleList))
		(T (find-angles-helper px
			(rest graph)
			(append angleList (list (cons (get-name graph) (cons (atan (- (get-y graph) (get-p-y px)) (- (get-x graph) (get-p-x px))) nil))))))
	)
)

(defun find-smallest-py (list)
	(find-smallest-py-helper list nil)
)

(defun find-smallest-py-helper (list smallest)
	(cond
		((null list) smallest)
		((and (null smallest) (>= (get-x list) 0)) (find-smallest-py-helper (rest list) (first list)))
		((and (>= (get-x list) 0) (< (get-x list) (first(rest smallest)))) (find-smallest-py-helper (rest list) (first list)))
		(T (find-smallest-py-helper (rest list) smallest))
	)
)

(defun find-largest-py (list)
	(find-largest-py-helper list nil)
)

(defun find-largest-py-helper (list largest)
	(cond
		((null list) largest)
		((and (null largest) (<= (get-x list) 0)) (find-largest-py-helper (rest list) (first list)))
		((and (<= (get-x list) 0) (< (get-x list) (first(rest largest)))) (find-largest-py-helper (rest list) (first list)))
		(T (find-largest-py-helper (rest list) largest))
	)
)
