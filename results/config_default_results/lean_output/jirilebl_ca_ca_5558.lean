import Mathlib
open Complex

/-- Suppose f : D → D is holomorphic and f(0) = 0, then |f'(0)| ≤ 1. Save it to jirilebl_ca_ca_5558.lean. End the Lean4 statement with := by sorry. -/
theorem abs_deriv_le_one_of_maps_zero_to_zero {f : ℂ → ℂ} (hf : Differentiable ℂ f) (h : f 0 = 0) :
    Complex.abs (deriv f 0) ≤ 1 := by sorry
