import Mathlib

/-- Let E be an inner product space over ℝ. For any b : E and any continuous linear functional
B : E →L[ℝ] ℝ which satisfies B x = inner b x for all x, the operator norm of B equals the norm of b. -/
theorem op_norm_inner_eq_norm {E : Type _} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  (b : E) (B : E →L[ℝ] ℝ) (h : ∀ x : E, B x = inner b x) : ‖B‖ = ‖b‖ := by sorry
