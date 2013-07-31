;;; cm-table converts all units to cm
;;; cm is the base unit here

(defvar cm-table `((millimeter 0.1)
		   (centimeter 1.0)
		   (meter 100)
		   (kilometer 100000)
		   (inch 2.54)
		   (foot 30.48)
		   (yard 91.44)
		   (mile 160934)
		   (nauticle-mile 185200)
		   (cubit 45.72)
		   (span 22.86)
		   (hand 10.16)
		   (fathom 182.88)
		   (light-year 9.4605284e17)))

(defun convert (num1 unit1 unit2)
  "takes a number and two quoted keys, returns a number
  example (convert 1 'fathom 'inch) "
  (/ (* num1 (nth 1 (assoc unit1 cm-table))) 
     (nth 1 (assoc unit2 cm-table))))

