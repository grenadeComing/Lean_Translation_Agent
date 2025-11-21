import Mathlib
open Filter Asymptotics

/-- Suppose f : ℝ^n → ℝ is differentiable at x0 in ℝ^n. Then the remainder
    f(x0 + h) - f(x0) - fderiv ℝ f x0 h is little-o of ‖h‖ as h → 0, i.e.
    |f(x0+h) - f(x0) - Df(x0) h| = o(‖h‖). This implies the stated bound
    |...| ≤ ‖Df(x0)‖ ‖h‖ + o(‖h‖). -/
theorem jirilebl_ra_ch_several_vars_ders_2621 {n : ℕ} (f : (Fin n → ℝ) → ℝ) {x0 : Fin n → ℝ}
  (hf : DifferentiableAt ℝ f x0) :
  (fun h => ‖f (x0 + h) - f x0 - (fderiv ℝ f x0) h‖) =o[𝓝 (0 : Fin n → ℝ)] fun h => ‖h‖ := by sorry