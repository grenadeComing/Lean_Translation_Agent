import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

/-- Suppose B : E →L[ℝ] ℝ is given by B x = ⟪b, x⟫_ℝ for some b ∈ E. Then the operator norm of B equals the norm of b. -/
lemma linear_functional_op_norm_eq_norm {b : E} {B : E →L[ℝ] ℝ} (hB : ∀ x : E, B x = ⟪b, x⟫_ℝ) : ‖B‖ = ‖b‖ := by sorry
