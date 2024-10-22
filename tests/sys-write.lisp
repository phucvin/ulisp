(def print1 (n)
     (syscall/write 1 &n 1))

(def main ()
     (print1 (+ 1 48))
     (print1 (+ 2 48))
     (print1 (+ 3 48))
     (print1 (+ 4 48))
     10)
