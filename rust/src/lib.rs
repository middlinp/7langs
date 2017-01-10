fn prime_factors(num: i64) -> Vec<i64> {
   if num < 2 {
      vec![]
   } else if(num % 2 == 0) && num > 2
   {
      let numbers = vec![2]
      for factor in prime_factors(num/2)
      {
         numbers.append( factor )
      }
      return numbers;
   }
   else
   {
      vec![num]
   }
}

#[test]
fn prime_factors_of_one() {
   assert_eq!(prime_factors(1), []);
}

// comments look like this
/* or this */
#[test]
fn prime_factors_of_two() {
   assert_eq!(prime_factors(2), [2]);
}

#[test]
fn prime_factors_of_three() {
   assert_eq!(prime_factors(3), [3]);
}

#[test]
fn prime_factors_of_four() {
   assert_eq!(prime_factors(4), [2, 2]);
}

#[test]
fn prime_factors_of_six() {
   assert_eq!(prime_factors(6), [2, 3]);
}

#[test]
fn prime_factors_of_eight() {
assert_eq!(prime_factors(8), [2, 2, 2]);
}
