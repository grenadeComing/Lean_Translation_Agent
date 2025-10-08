import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- Operator norm equals supremum over the unit sphere. -/
theorem opNorm_eq_supr_unit_sphere (A : E →L[ℝ] E) : A.opNorm = ⨆ (x : E) (hx : ‖x‖ = 1), ‖A x‖ := by sorry

/-- Operator norm equals supremum over the closed unit ball. -/
theorem opNorm_eq_supr_closed_unit_ball (A : E →L[ℝ] E) : A.opNorm = ⨆ (x : E) (hx : ‖x‖ ≤ 1), ‖A x‖ := by sorry

/-- Operator norm equals supremum over the open unit ball. -/
theorem opNorm_eq_supr_open_unit_ball (A : E →L[ℝ] E) : A.opNorm = ⨆ (x : E) (hx : ‖x‖ < 1), ‖A x‖ := by sorry
