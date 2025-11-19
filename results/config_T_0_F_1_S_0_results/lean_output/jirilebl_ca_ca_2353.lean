import Mathlib

open Complex

theorem complex_holomorphic_conformal_iff_deriv_ne_zero {f : ℂ → ℂ} {z0 : ℂ}
  (h : DifferentiableAt ℂ f z0) :
  ConformalAt (fun z : ℂ => f z) z0 ↔ deriv f z0 ≠ 0 := by sorry
