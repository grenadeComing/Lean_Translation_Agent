import Mathlib

variable {n m : ℕ}

/-- The operator norm on L(ℝ^n, ℝ^m) equals the supremum (and maximum on the unit sphere).
    Proof omitted. -/
theorem operator_norm_unit_ball {n m : ℕ} (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) :
  (∥A∥ = ⨆ (x : {x : Fin n → ℝ // ‖x‖ = 1}), ‖A x.val‖) ∧
  (∥A∥ = ⨆ (x : {x : Fin n → ℝ // ‖x‖ ≤ 1}), ‖A x.val‖) ∧
  (∥A∥ = ⨆ (x : {x : Fin n → ℝ // ‖x‖ < 1}), ‖A x.val‖) := by
  sorry
