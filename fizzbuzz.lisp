(defun fizzbuzz (n)
  (cond ((= 0 (mod n (* 3 5))) "FizzBuzz")
        ((= 0 (mod n 3) )"Fizz")
        ((= 0 (mod n 5) )"Buzz")
        (t (write-to-string n))))

(loop for i from 1 to 100
      do (write-line (fizzbuzz i)))
