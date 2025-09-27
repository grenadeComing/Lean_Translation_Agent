import Mathlib

/-!
Simple statements about the operator norm on R^n.
We state that for a continuous linear map A : (Fin n -> R) ->L[ℝ] (Fin n -> R)
its operator norm equals the suprema over the unit sphere, the closed unit ball,
and the open unit ball. Proofs are omitted (sorry).
-/

variable {n : ℕ}

theorem operator_norm_eq_sup_unit (A : (Fin n → ℝ) →L[ℝ] (Fin n → ℝ)) :
  ‖A‖ = Sup (set.image (fun x => ‖A x‖) { x | ‖x‖ = 1 }) := by sorry

theorem operator_norm_eq_sup_closed_ball (A : (Fin n → ℝ) →L[ℝ] (Fin n → ℝ)) :
  ‖A‖ = Sup (set.image (fun x => ‖A x‖) { x | ‖x‖ ≤ 1 }) := by sorry

theorem operator_norm_eq_sup_open_ball (A : (Fin n → ℝ) →L[ℝ] (Fin n → ℝ)) :
  ‖A‖ = Sup (set.image (fun x => ‖A x‖) { x | ‖x‖ < 1 }) := by sorry
