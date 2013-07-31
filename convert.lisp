;;; Ryan Burnside 2013 unit conversion program
;;; cm-table converts all units to cm
;;; cm is the base unit here

(defparameter cm-table `((centimeter 1.0)
			 (centimeters 1.0)
			 (cubit 45.72)
			 (cubits 45.72)
			 (fathom 182.88)
			 (fathoms 182.88)
			 (feet 30.48)
			 (foot 30.48)
			 (furlong 20116.8)
			 (furlongs 20116.8)
			 (hand 10.16)
			 (hands 10.16)
			 (inch 2.54)
			 (inches 2.54)
			 (kilometer 100000.0)
			 (kilometers 100000.0)
			 (light-year 9.4605284e17)
			 (light-years 9.4605284e17)
			 (meter 100.0)
			 (meters 100.0)
			 (mile 160934)
			 (miles 160934)
			 (millimeter 0.1)
			 (millimeters 0.1)
			 (nauticle-mile 185200)
			 (nauticle-miles 185200)
			 (span 22.86)
			 (spans 22.86)
			 (yard 91.44)
			 (yards 91.44)))

(defun convert (num1 unit1 unit2)
  "Takes a number and two quoted keys, returns a number
  example (convert 1 'fathom(s) 'inch(es)) "
  (/ (* num1 (cadr (assoc unit1 cm-table))) 
     (cadr (assoc unit2 cm-table))))

(defun request-units(num1 unit1 unit2)
  (if (and (assoc unit1 cm-table) (assoc unit2 cm-table))
      (return-from request-units (convert num1 unit1 unit2)))

  (if (not (assoc unit1 cm-table))
      (format t "First unit ~A is not understood" unit1))

  (if (not (assoc unit2 cm-table))
      (format t "Second unit ~A is not understood" unit2)))
      
