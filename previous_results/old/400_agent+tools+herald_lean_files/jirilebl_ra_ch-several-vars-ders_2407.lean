import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]

/-- Neumann perturbation lemma for bounded linear operators over ℝ.
Let L : E ≃L[ℝ] F be a continuous linear equivalence with inverse L.symm.
If A : E →L[ℝ] F satisfies ‖A - L.toContinuousLinearMap‖ < 1 / ‖L.symm‖,
then A is invertible (as a continuous linear equivalence) and its inverse satisfies the stated bound.
(Proof omitted; use the Neumann series.) -/
theorem neumann_perturbation_of_invertible (L : E ≃L[ℝ] F) (A : E →L[ℝ] F)
  (h : ‖A - (L : E →L[ℝ] F)‖ < 1 / ‖(L.symm : F →L[ℝ] E)‖) :
  ∃ e : E ≃L[ℝ] F,
    e.toContinuousLinearMap = A ∧
    ‖(e.symm : F ≃L[ℝ] E).toContinuousLinearMap‖ ≤
      ‖(L.symm : F →L[ℝ] E)‖ / (1 - ‖(L.symm : F →L[ℝ] E)‖ * ‖A - (L : E →L[ℝ] F)‖) := by
  -- proof omitted
  sorry
