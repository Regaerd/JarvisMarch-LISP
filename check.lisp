;;;;
;; Dependencies: get.lisp
;;;;


(defun check-input (graph)
  (cond
    ((check-name graph) "JARVIS ERROR: duplicate point name")
    ((check-list-short graph) "JARVIS ERROR: too few points")
    ((check-list-long graph) "JARVIS ERROR: too many points")
    ((check-x graph) "JARVIS ERROR: non-numeric value used for x")
    ((check-y graph) "JARVIS ERROR: non-numeric value used for y")
    (T nil)
  )
)

(defun check-name (graph)
	(cond
		((null graph) nil)
		((check-name-helper (rest graph)(get-name graph)) T)
		(T(check-name (rest graph)))
	)
)

(defun check-name-helper (graph name)
  (cond
    ((null graph) nil)
    ((eql (get-name graph) name) T)
    (T (check-name-helper (rest graph) name))
  )
)

(defun check-x (graph)
  (cond 
    ((null graph) nil)
    ((not(numberp (get-x graph))) T)
    (T (check-x (rest graph)))
  )
)

(defun check-y (graph)
  (cond 
    ((null graph) nil)
    ((not(numberp (get-y graph))) T)
    (T (check-y (rest graph)))
  )
)

(defun check-list-short (graph)
  (cond
    ((null graph) nil)
    ((> 3 (length (first graph))) T)
    (T (check-list-short (rest graph)))
  )
)

(defun check-list-long (graph)
  (cond
    ((null graph) nil)
    ((< 3 (length (first graph))) T)
    (T (check-list-long (rest graph)))
  )
)

(defun check-loop (p0 convexset)
	(cond
		((null convexset) nil)
		((eql (first p0)(first convexset)) T)
		(T (check-loop p0 (rest convexset)))
	)
)

