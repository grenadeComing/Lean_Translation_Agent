import Mathlib

open Complex

variable {f : ℂ → ℂ} {z0 : ℂ}

theorem is_holomorphic_at.is_conformal_at_iff_deriv_ne_zero (hf : IsHolomorphicAt f z0) :
  (IsConformalAt f z0) ↔ deriv f z0 ≠ 0 := by sorry
