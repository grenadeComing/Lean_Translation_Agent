import Mathlib

/-! # Axler Exercise 1.3

Prove that -(-v) = v for every v in V.
-/

variable {V : Type*} [AddGroup V]

/-- Double negation in an additive group: -(-v) = v. -/
theorem neg_neg (v : V) : - -v = v := by sorry
