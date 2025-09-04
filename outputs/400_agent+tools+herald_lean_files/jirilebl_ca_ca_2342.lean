import Mathlib

/-- Suppose `f : ℂ → ℂ` is holomorphic. Show that `f` is conformal at a point `z₀` iff `f'(z₀) ≠ 0`. -/
theorem holomorphic_conformal_iff_deriv_ne_zero {f : ℂ → ℂ} {z₀ : ℂ} :
  ConformalAt f z₀ ↔ DifferentiableAt ℂ f z₀ ∧ deriv f z₀ ≠ 0 := by sorry
