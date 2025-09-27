import Mathlib

open Complex
open scoped ComplexConjugate

theorem jirilebl_ca_ca_14412 (z w : ℂ) (h : ‖z‖ = ‖w‖) :
  ‖z + w‖ = ‖z - w‖ ↔ (z * star w).re = 0 := by sorry
