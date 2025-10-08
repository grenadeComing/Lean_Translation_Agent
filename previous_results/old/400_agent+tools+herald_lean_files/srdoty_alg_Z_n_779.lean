import Mathlib

/-!
Let n > 0 be an integer and let a,b be integers. Prove that a ≡ b (mod n)
iff a and b have the same remainder upon division by n.
-/

theorem int_modeq_iff_same_remainder (n a b : Int) (hn : 0 < n) :
  Int.ModEq n a b ↔ Int.emod a n = Int.emod b n := by
  sorry
