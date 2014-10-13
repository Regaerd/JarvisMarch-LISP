;;;;
;; Dependencies: get.lisp, check.lisp, find.lisp
;;;;

(defun jarvis (graph)
	(cond 
		((not(check-input graph)) 
			(jarvis-half-string graph (find-lowest graph) (find-lowest graph) (list(first(find-lowest graph))))
		)
    		(T (check-input graph)) ;if the previous check failed, return the error message
  	)
)

;;the first string needs to be ran once before tests for special cases can be done, that's the point of half-string
(defun jarvis-half-string (graph px p0 convexset)
	(cond
		((find-smallest-py(find-angles px graph))
			(jarvis-first-string
				graph
				(get-point(find-smallest-py (find-angles px graph)) graph)
				p0
        			(append convexset (list(first(find-smallest-py(find-angles px graph))))) 
				;^this probably isn't the most efficient way to do this, I will admit that.
			)
		)
		(T(jarvis-second-string graph px p0 convexset))
    )
)

(defun jarvis-first-string (graph px p0 convexset)
	(cond
		((eql (first px) (first p0)) convexset) ;for special cases
		((check-loop px (remove-last convexset))
			(jarvis-second-string graph (get-point (last (remove-last convexset)) graph) p0 (remove-last convexset)))
		((find-smallest-py(find-angles px graph))
			(jarvis-first-string
				graph
				(get-point (find-smallest-py (find-angles px graph)) graph)
				p0
        			(append convexset (list(first(find-smallest-py(find-angles px graph))))) 
			)
		)
		(T(jarvis-second-string graph px p0 convexset))
    )
)

(defun jarvis-second-string (graph px p0 convexset)
	(cond
		((eql (first px) (first p0)) convexset)
		((find-largest-py(find-angles px graph))
			(jarvis-second-string 
				graph 
				(get-point (find-largest-py (find-angles px graph)) graph)
				p0 
        			(append convexset (list(first(find-largest-py(find-angles px graph)))))
			)
		)
		(T "JARVIS ERROR: something is wrong in second string") ;only makes it to this point if I did something wrong
	)
)
