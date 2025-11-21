import Mathlib

/-- Let (X, ||·||_X) be a normed vector space and (Y, ||·||_Y) be a normed vector space.
If A is a linear map X →ₗ[𝕜] Y and bounded (there exists C ≥ 0 with ‖A x‖ ≤ C * ‖x‖ for all x),
then A is continuous. -/

variable {𝕜 : Type*} [NormedField 𝕜]
variable {X Y : Type*} [NormedAddCommGroup X] [NormedAddCommGroup Y]
  [NormedSpace 𝕜 X] [NormedSpace 𝕜 Y]

theorem linear_map_bounded_implies_continuous (A : X →ₗ[𝕜] Y)
  (h : ∃ C : ℝ, 0 ≤ C ∧ ∀ x : X, ‖A x‖ ≤ C * ‖x‖) : Continuous (A : X → Y) := by sorry