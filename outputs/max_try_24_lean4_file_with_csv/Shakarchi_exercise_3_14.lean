import Mathlib

/-- Exercise: If f is entire (holomorphic on all of ℂ) and injective, then f is affine. -/
theorem Shakarchi_exercise_3_14 (Entire : (ℂ → ℂ) → Prop) {f : ℂ → ℂ} (h_entire : Entire f) (h_inj : Function.Injective f) :
  ∃ (a b : ℂ), a ≠ 0 ∧ ∀ z : ℂ, f z = a * z + b := by sorry
