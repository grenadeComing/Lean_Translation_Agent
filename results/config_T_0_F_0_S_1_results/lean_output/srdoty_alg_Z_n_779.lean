import Mathlib

/-- Let n > 0 be an integer and a, b be integers.  
    Then a ≡ b (mod n) (i.e. n ∣ a - b) iff a and b have the same remainder upon division by n. -/
theorem dvd_iff_same_remainder_mod (n : Int) (hn : 0 < n) (a b : Int) : n ∣ a - b ↔ a % n = b % n := by sorry