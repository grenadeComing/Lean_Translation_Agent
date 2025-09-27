import Mathlib

open Complex Set

/--
There is no holomorphic function f on the unit disc that extends continuously to the closed
unit disc and equals 1/z on the unit circle.
-/
theorem Shakarchi_exercise_3_22 :
  ¬ ∃ (f : ℂ → ℂ),
    continuous_on f (closed_ball (0 : ℂ) 1) ∧
    analytic_on f (ball (0 : ℂ) 1) ∧
    ∀ z ∈ sphere (0 : ℂ) 1, f z = z⁻¹ := by sorry
