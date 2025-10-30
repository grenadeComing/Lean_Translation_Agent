import Mathlib

/-- Let n be a positive integer. Then Z_n is a field iff n is a prime number. -/
theorem isField_iff_prime {n : ℕ} [NeZero n] : IsField (ZMod n) ↔ n.Prime := by sorry
