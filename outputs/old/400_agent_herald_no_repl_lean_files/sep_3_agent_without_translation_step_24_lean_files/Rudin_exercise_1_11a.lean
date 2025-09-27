import Mathlib

/-- Rudin chapter 1 exercise 11(a):
If z is a complex number, prove that there exists an r ≥ 0 and a complex number w with |w| = 1 such that z = r w. -/
theorem Rudin_exercise_1_11a (z : ℂ) : ∃ (r : ℝ) (w : ℂ), 0 ≤ r ∧ Complex.abs w = 1 ∧ z = (Complex.ofReal r) * w := by sorry
