import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

/-- For b : E, the continuous linear functional `innerSL ℝ b : E →L[ℝ] ℝ` has operator norm equal to
    the norm of b. -/
theorem operator_norm_innerSL (b : E) : ‖(innerSL ℝ b : E →L[ℝ] ℝ)‖ = ‖b‖ := by sorry
