import Mathlib

variable {f : ℂ → ℂ} {z0 : ℂ}

/-- Suppose f : ℂ → ℂ is holomorphic at z0.  Then f is conformal at z0 iff f'(z0) ≠ 0. -/
theorem holomorphic_is_conformal_at_iff_deriv_ne_zero (hf : IsHolomorphicAt f z0) :
  IsConformalAt f z0 ↔ deriv f z0 ≠ 0 := by sorry
