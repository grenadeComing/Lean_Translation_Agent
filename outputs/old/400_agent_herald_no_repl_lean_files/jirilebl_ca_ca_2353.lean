import Mathlib

open Complex

theorem holomorphic_is_conformal_at_iff_deriv_ne_zero {f : ℂ → ℂ} {z0 : ℂ}
  (hf : IsHolomorphicAt f z0) : IsConformalAt f z0 ↔ (deriv f z0 ≠ 0) := by sorry
