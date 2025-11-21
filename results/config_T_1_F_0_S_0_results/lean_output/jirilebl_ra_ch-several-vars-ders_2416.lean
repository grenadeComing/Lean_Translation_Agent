import Mathlib

/-! Let A be a linear operator on ℝ^n. The operator norm on ℝ^n defined by
    ‖A‖ = max { ‖A x‖ : ‖x‖ = 1 }
  is equal to the supremum over the closed unit ball and the open unit ball.
  The statement below is given in the generality of continuous linear maps between
  real normed spaces. -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ F]

theorem operator_norm_eq_sups (A : E →L[ℝ] F) :
  A.opNorm = Sup ((fun x : E => ‖A x‖) '' {x | ‖x‖ = 1}) ∧
  A.opNorm = Sup ((fun x : E => ‖A x‖) '' {x | ‖x‖ ≤ 1}) ∧
  A.opNorm = Sup ((fun x : E => ‖A x‖) '' {x | ‖x‖ < 1}) := by sorry
