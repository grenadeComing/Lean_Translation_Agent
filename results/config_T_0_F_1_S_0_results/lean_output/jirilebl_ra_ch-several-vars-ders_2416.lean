import Mathlib

open Set

theorem operator_norm_eq_sups {n : ℕ} (A : (Fin n → ℝ) →ₗ[ℝ] (Fin n → ℝ)) :
  sSup ((fun x => ‖A x‖) '' { x : Fin n → ℝ | ‖x‖ = 1 }) =
  sSup ((fun x => ‖A x‖) '' { x : Fin n → ℝ | ‖x‖ ≤ 1 }) ∧
  sSup ((fun x => ‖A x‖) '' { x : Fin n → ℝ | ‖x‖ = 1 }) =
  sSup ((fun x => ‖A x‖) '' { x : Fin n → ℝ | ‖x‖ < 1 }) := by sorry
