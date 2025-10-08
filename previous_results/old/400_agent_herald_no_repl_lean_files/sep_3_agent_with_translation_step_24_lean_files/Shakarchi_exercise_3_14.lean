import Mathlib

open Function

/-- Exercise: Entire injective functions are affine. -/
theorem Shakarchi_exercise_3_14 {f : ℂ → ℂ} (hf : Differentiable ℂ f) (hinj : Injective f) :
  ∃ (a b : ℂ), a ≠ 0 ∧ ∀ z : ℂ, f z = a * z + b := by sorry
