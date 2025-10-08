import Mathlib

-- Let n > 0 be an integer and let a, b : Int. a ≡ b (mod n) iff a and b have the same remainder on division by n.
theorem srdoty_alg_Z_n_779 (n : Int) (hn : 0 < n) (a b : Int) : Int.modeq a b n ↔ a % n = b % n := by sorry
