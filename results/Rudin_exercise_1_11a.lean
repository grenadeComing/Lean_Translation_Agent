import Mathlib

/-
Exercise: If z is a complex number, prove that there exists an r ≥ 0 and a complex number w with |w| = 1 such that z = r w.
This file provides the statement (proof omitted).
-/

theorem Rudin_exercise_1_11a (z : ℂ) :
  ∃ (r : ℝ) (w : ℂ), 0 ≤ r ∧ Complex.abs w = 1 ∧ z = (r : ℂ) * w := by
  sorry
