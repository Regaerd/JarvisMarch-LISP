;;;;
;; Dependencies: jarvis.lisp
;;;;
;;;; The 17 graphs used to test jarvis.lisp
;;;;

;;set the 17 graphs
(setq graph1 '((S 1 1)(b 3 4)(C 6 1)(B 6 8)(E 3 5)(F 3 10)(G 1 8))) ;triggers correct error
(setq graph2 '((A 10 5)(B 3 4)(C 6 1)(D 6 8)(E 3 5)(F 3 10)(G 1 8))) ;nothing special
(setq graph3 '((A 10 5)(B 3 4)(C 6 1)(D 6 8)(E 3 5)(F 3 10)(G 1 8)(H 9 9)(I 2 5))) ;nothing special
(setq graph4 '((A 1 1)(B 3 4)(C 6 1)(D 6 8)(E 3 5)(F 3 7)(G 1 9))) ;nothing special
(setq graph5 '((A 1 1)(B 4 1)(C 8 1))) ;horizontal line
(setq graph5.1 '((A 1 1)(B 1 5)(C 1 10))) ;vertical line
(setq graph6 '((Z 5 5))) ;single point
(setq graph7 '((a 3 2)(b 4 7)(b 2 3))) ;control case
(setq graph8 '((a 3 2)(b 4 7)(c h 3))) ;triggers correct error
(setq graph9 '((a 3 2)(b 4 h)(c 2 3))) ;triggers correct error
(setq graph10 '((A 1 1)(B 5 4)(C 10 1)(D 10 8)(E 5 7)(F 5 10)(G 1 8))) ;something more complex
(setq graph11 '((A 1 1)(B 1 2 dfgbdb))) ;triggers correct error
(setq graph12.0 '((A 1 1)(B 3 4)(C)(D 4 5))) ;triggers correct error
(setq graph12.1 '((A 1 1)(B 3 4)(C 4 9)(D 4 5)())) ;triggers correct error
(setq graph12.2 '((A 1)(B 3 4)(C 4 9)(D 4 5))) ;triggers correct error
(setq graph13 '((Z 1 1)(X 5 5)(Y 1 5)(W 5 1))) ;square
(setq graph14 '((B 1 1)(U 10 1)(T 5 10))) ;triangle

;;test the 17 graphs
(print(cons '(graph1) (cons (jarvis graph1) nil)))
(print(cons '(graph2) (cons (jarvis graph2) nil)))
(print(cons '(graph3) (cons (jarvis graph3) nil)))
(print(cons '(graph4) (cons (jarvis graph4) nil)))
(print(cons '(graph5) (cons (jarvis graph5) nil)))
(print(cons '(graph5.1) (cons (jarvis graph5.1) nil)))
(print(cons '(graph6) (cons (jarvis graph6) nil)))
(print(cons '(graph7) (cons (jarvis graph7) nil)))
(print(cons '(graph8) (cons (jarvis graph8) nil)))
(print(cons '(graph9) (cons (jarvis graph9) nil)))
(print(cons '(graph10) (cons (jarvis graph10) nil)))
(print(cons '(graph11) (cons (jarvis graph11) nil)))
(print(cons '(graph12.0) (cons (jarvis graph12.0) nil)))
(print(cons '(graph12.1) (cons (jarvis graph12.1) nil)))
(print(cons '(graph12.2) (cons (jarvis graph12.2) nil)))
(print(cons '(graph13) (cons (jarvis graph13) nil)))
(print(cons '(graph14) (cons (jarvis graph14) nil)))
