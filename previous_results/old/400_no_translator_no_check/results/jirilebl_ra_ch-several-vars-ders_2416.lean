import Mathlib

variable {E F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ F]

theorem opNorm_eq_sups (f : E →L[ℝ] F) :
  f.opNorm = ⨆ (x : E) (h : ‖x‖ ≤ 1), ‖f x‖ ∧
  f.opNorm = ⨆ (x : E) (h : ‖x‖ = 1), ‖f x‖ ∧
  f.opNorm = ⨆ (x : E) (h : ‖x‖ < 1), ‖f x‖ := by
  sorry
