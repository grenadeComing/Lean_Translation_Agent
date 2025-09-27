import Mathlib

/-- The subgroups of (ℤ, +) are exactly the sets of integer multiples of some n. -/
theorem subgroups_Z_eq_multiples (H : AddSubgroup ℤ) : ∃ n : ℕ, (H : Set ℤ) = {m : ℤ | (n : ℤ) ∣ m} := by sorry
