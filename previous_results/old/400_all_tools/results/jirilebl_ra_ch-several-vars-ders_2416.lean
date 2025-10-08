import Mathlib

variable {m : ℕ}

/-- Let A be a linear continuous operator on ℝ^m (viewed as `Fin m → ℝ`).
The operator norm can be expressed as a supremum over the unit sphere, the closed unit ball,
and the open unit ball. -/
theorem operator_norm_eq_sups (A : (Fin m → ℝ) →L[ℝ] (Fin m → ℝ)) :
  ‖A‖ = ⨆ (x : Fin m → ℝ) (hx : ‖x‖ = 1), ‖A x‖ := by sorry

theorem operator_norm_eq_supr_closed_ball (A : (Fin m → ℝ) →L[ℝ] (Fin m → ℝ)) :
  ‖A‖ = ⨆ (x : Fin m → ℝ) (hx : ‖x‖ ≤ 1), ‖A x‖ := by sorry

theorem operator_norm_eq_supr_open_ball (A : (Fin m → ℝ) →L[ℝ] (Fin m → ℝ)) :
  ‖A‖ = ⨆ (x : Fin m → ℝ) (hx : ‖x‖ < 1), ‖A x‖ := by sorry
