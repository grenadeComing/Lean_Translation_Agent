import Mathlib

/-- Let n be a positive integer. Then Z_n is a field if and only if n is a prime number. -/
theorem zmod_is_field_iff_prime (n : ℕ) : IsField (ZMod n) ↔ Nat.Prime n := by sorry
