import Mathlib

variable {𝕜 : Type _} [NormedField 𝕜]
variable {E : Type _} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type _} [NormedAddCommGroup F] [NormedSpace 𝕜 F]

/-- If a linear map is bounded (there exists C with ∥A x∥ ≤ C ∥x∥ for all x), then it is continuous. -/
theorem linear_map_bounded_implies_continuous (A : E →ₗ[𝕜] F)
  (h : ∃ C, 0 ≤ C ∧ ∀ x, ‖A x‖ ≤ C * ‖x‖) : Continuous (A : E → F) := by sorry
