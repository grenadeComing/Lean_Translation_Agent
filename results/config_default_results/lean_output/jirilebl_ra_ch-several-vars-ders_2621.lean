import Mathlib

open Asymptotics ContinuousLinearMap

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- Suppose f : E → ℝ is differentiable at x0 ∈ E. Then the error
    f(x0+h) - f(x0) - Df(x0) h is bounded by the operator norm times ‖h‖ plus a smaller-order term.
    Formally: there exists r = o(‖h‖) as h → 0 such that
    |f(x0+h) - f x0 - fderiv f x0 h| ≤ ‖fderiv f x0‖ * ‖h‖ + r h. -/
theorem differentiable_at.error_le_op_norm_add_o {f : E → ℝ} {x0 : E} (hf : DifferentiableAt ℝ f x0) :
  ∃ r : E → ℝ,
    IsLittleO (nhds (0 : E)) r (fun h => ‖h‖) ∧
    ∀ h : E,
      |f (x0 + h) - f x0 - (fderiv ℝ f x0 : E →L[ℝ] ℝ) h|
        ≤ ‖(fderiv ℝ f x0 : E →L[ℝ] ℝ)‖ * ‖h‖ + r h := by sorry