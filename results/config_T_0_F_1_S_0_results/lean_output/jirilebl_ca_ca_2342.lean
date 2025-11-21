import Mathlib

open Complex

theorem jirilebl_ca_ca_2342 {f : Complex → Complex} {z0 : Complex} (h : DifferentiableAt ℂ f z0) :
  ConformalAt f z0 ↔ deriv f z0 ≠ 0 := by sorry
