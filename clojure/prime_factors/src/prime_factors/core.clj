(ns prime-factors.core)

(defn primes
   ([num] (primes num 2))
   ([num candidate]
      (cond
         (< num candidate) []
         (= (mod num candidate) 0)
            (cons candidate (primes (/ num candidate) candidate) )
         :else (primes num (inc candidate))
      )
   )
)
