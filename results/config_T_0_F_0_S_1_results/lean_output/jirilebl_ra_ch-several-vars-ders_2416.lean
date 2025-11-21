import Mathlib

open Set

variable {n : ℕ}

-- A continuous linear operator on ℝ^n
variable (A : (Fin n → ℝ) →L[ℝ] (Fin n → ℝ))

theorem operator_norm_eq_sups :
  ‖A‖ = Sup (image (fun x => ‖A x‖) { x | ‖x‖ = 1 }) ∧
  ‖A‖ = Sup (image (fun x => ‖A x‖) { x | ‖x‖ ≤ 1 }) ∧
  ‖A‖ = Sup (image (fun x => ‖A x‖) { x | ‖x‖ < 1 }) := by sorry
