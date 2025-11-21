import Mathlib

variable {E F : Type*}
  [SeminormedAddCommGroup E] [SeminormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ F] [FiniteDimensional ℝ E]

/-- For a bounded linear map on a finite-dimensional real normed space E,
    there exists a unit vector attaining the operator norm; consequently this
    operator norm is the maximum over the unit sphere and bounds the values
    on the closed and open unit balls. -/
theorem operator_norm_eq_on_unit_sets (f : E →L[ℝ] F) :
  ∃ x : E,
    ‖x‖ = 1 ∧
    ‖f x‖ = ‖f‖ ∧
    (∀ y, ‖y‖ = 1 → ‖f y‖ ≤ ‖f x‖) ∧
    (∀ y, ‖y‖ ≤ 1 → ‖f y‖ ≤ ‖f x‖) ∧
    (∀ y, ‖y‖ < 1 → ‖f y‖ ≤ ‖f x‖) := by sorry
