import Mathlib

theorem holomorphic_conformal_iff_deriv_ne_zero {f : ℂ → ℂ} {z0 : ℂ} (h : IsHolomorphicAt f z0) :
  ConformalAt f z0 ↔ deriv f z0 ≠ 0 := by
  sorry
