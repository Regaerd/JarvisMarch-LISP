JarvisMarch-LISP
================

A simple Jarvis' March implementation in LISP


How to run and test the program:

-In CLISP, to properly load jarvis, use:

	(load "loader.lisp")
	
-To test the program after jarvis has been loaded, either use:

	(load "extra/test.lisp")
	
Or enter your own set of points, formatted like:

	(jarvis '((I1 X1 Y1)(I2 X2 Y2) ... (In Xn Yn)))
	
Where 'X' and 'Y' are real numbers and 'I' is a unique identifier for each point.

If in doubt, see 'extra/test.lisp' as an example.
