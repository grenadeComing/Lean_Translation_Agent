import Mathlib

variable {E F : Type*} [SeminormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  [SeminormedAddCommGroup F] [NormedSpace ℝ F]

/-- For finite-dimensional normed spaces over ℝ, the operator norm of a continuous linear map
    equals the maximum (supremum) of the norms on the unit sphere and the (closed / open)
    unit ball. -/
theorem operator_norm_eq_sup_unit_sets (A : E →L[ℝ] F) :
  (‖A‖ = ⨆ (x : E) (h : ‖x‖ = 1), ‖A x‖) ∧
  (‖A‖ = ⨆ (x : E) (h : ‖x‖ ≤ 1), ‖A x‖) ∧
  (‖A‖ = ⨆ (x : E) (h : ‖x‖ < 1), ‖A x‖) := by sorry
