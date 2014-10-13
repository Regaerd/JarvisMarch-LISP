;;;;
;; Dependencies: none
;;;;


(defun get-name (graph)
	(first(first graph))
)

(defun get-x (graph)
	(first(rest(first graph)))
)

(defun get-y (graph)
	(first(rest(rest(first graph))))
)

(defun get-p-x (p)
	(first(rest p))
)

(defun get-p-y (p)
	(first(rest(rest p)))
)

(defun get-point (p graph)
	(cond 
		((eql (first p) (first(first graph))) (first graph))
		(T (get-point p (rest graph)))
	)
)

(defun remove-last (list)
	(reverse(rest(reverse list)))
)

