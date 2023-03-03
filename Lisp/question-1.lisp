(defun exp1 (x)
( / (- 1 x)(+ 1( * 2 x)) ))

(defun get-number (varName)
    (write-string (format nil "Input a number: ~x = " varName))
    (let*
        ((line (read-line)) ;get a line as a string
         (element (read-from-string line))) ;parse the line
        (if (numberp element) ;is get a valid floating point?
            element ;yes, return it
            (progn 
                (write-line "Invalid number, please try again.")  ;no, try again
                (get-element))))) ;using recursion

(format t "result = ~d" (exp1 (get-number "x")))