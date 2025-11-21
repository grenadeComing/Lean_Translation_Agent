import Mathlib

open Filter Asymptotics

/--
Suppose f : E → ℝ is differentiable at x0. Then the error
|f(x0+h) - f(x0) - fderiv ℝ f x0 h|
is bounded by ∥fderiv ℝ f x0∥ * ‖h‖ plus a smaller-order term as h → 0.
Equivalently, there exists g = o(‖h‖) such that
‖f(x0+h) - f(x0) - fderiv ℝ f x0 h‖ ≤ ∥fderiv ℝ f x0∥ * ‖h‖ + g(h).
-/
theorem jirilebl_ra_ch_several_vars_ders_2621 {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
  (f : E → ℝ) (x0 : E) (hf : DifferentiableAt ℝ f x0) :
  ∃ g : E → ℝ, is_o g (fun h => ‖h‖) (𝓝 (0 : E)) ∧
    ∀ h : E, ‖f (x0 + h) - f x0 - fderiv ℝ f x0 h‖ ≤ ‖(fderiv ℝ f x0)‖ * ‖h‖ + g h := by sorry