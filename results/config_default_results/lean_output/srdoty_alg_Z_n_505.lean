import Mathlib

/-- Let R be a ring and let a ∈ R. Show that a · 0 = 0 and 0 · a = 0. -/
theorem mul_zero_and_zero_mul {R : Type*} [MulZeroClass R] (a : R) : a * (0 : R) = 0 ∧ (0 : R) * a = 0 := by sorry
