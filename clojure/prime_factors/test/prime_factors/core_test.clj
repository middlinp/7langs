(ns prime-factors.core-test
   (:require [clojure.test :refer :all]
            [prime-factors.core :refer :all]))

(deftest prime-factors
   (is (= (primes 1) []))
   (is (= (primes 2) [2]))
   (is (= (primes 3) [3]))
   (is (= (primes 4) [2,2]))
   (is (= (primes 6) [2,3]))
   (is (= (primes 8) [2,2,2]))
   (is (= (primes 9) [3,3]))
;; (is (= (primes 36) [2,2,3,3]))

)

