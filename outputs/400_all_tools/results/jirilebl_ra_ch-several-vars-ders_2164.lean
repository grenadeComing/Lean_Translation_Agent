import Mathlib

/-- For any real inner product space E, the operator norm of the linear functional x ↦ ⟪b, x⟫ equals the norm of b. -/
theorem innerSL_opNorm {E : Type*} [SeminormedAddCommGroup E] [InnerProductSpace ℝ E] (b : E) : (innerSL ℝ b).opNorm = ‖b‖ := by sorry
