JarvisMarch-LISP
================

A simple Jarvis' March implementation in LISP


How to run and test the program:

-In CLISP, to properly load jarvis, use:

	(load "loader.lisp")
	
-To test the program after jarvis has been loaded, either use:

	(load "extra/test.lisp")
	
Or enter your own set of points, formatted like:

	(jarvis '((A x1 y1)(B x2 y2) ... (Z x3 y3)))
	
Where 'x' and 'y' are real numbers.
