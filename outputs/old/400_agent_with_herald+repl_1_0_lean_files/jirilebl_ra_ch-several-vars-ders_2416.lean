import Mathlib

variable {n : ℕ}
variable (A : (Fin n → ℝ) →L[ℝ] (Fin n → ℝ))

theorem operator_norm_eq_sup_sphere :
  ∥A∥ = Sup (Set.image (fun x => ‖A x‖) ({x : Fin n → ℝ | ‖x‖ = 1} : Set (Fin n → ℝ))) := by
  sorry

theorem operator_norm_eq_sup_closed_ball :
  ∥A∥ = Sup (Set.image (fun x => ‖A x‖) ({x : Fin n → ℝ | ‖x‖ ≤ 1} : Set (Fin n → ℝ))) := by
  sorry

theorem operator_norm_eq_sup_open_ball :
  ∥A∥ = Sup (Set.image (fun x => ‖A x‖) ({x : Fin n → ℝ | ‖x‖ < 1} : Set (Fin n → ℝ))) := by
  sorry
