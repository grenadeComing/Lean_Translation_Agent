import Mathlib

/-!
Simple statement: For linear maps between finite-dimensional real normed spaces (ℝ^n → ℝ^m),
the operator norm equals the supremum over the closed unit ball, the supremum over the open unit
ball, and the maximum is attained on the unit sphere.
-/

theorem operator_norm_on_Rn {n m : ℕ} (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) :
  ‖A‖ = Sup ((fun x => ‖A x‖) '' {x : Fin n → ℝ | ‖x‖ ≤ 1}) ∧
  ‖A‖ = Sup ((fun x => ‖A x‖) '' {x : Fin n → ℝ | ‖x‖ < 1}) ∧
  (∃ x : Fin n → ℝ, ‖x‖ = 1 ∧ ‖A‖ = ‖A x‖) := by
  sorry
