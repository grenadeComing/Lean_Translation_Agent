import Mathlib

/-!
Let (X, ||·||_X) and (Y, ||·||_Y) be normed vector spaces over a normed field 𝕜.
Show that if A : X →ₗ[𝕜] Y is linear and bounded, i.e. there exists C ≥ 0 such that
∀ x, ‖A x‖ ≤ C * ‖x‖, then A is continuous.
-/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  [NormedAddCommGroup F] [NormedSpace 𝕜 F]

/-- A linear map which is bounded by a constant is continuous. -/
theorem linear_bounded_implies_continuous (A : E →ₗ[𝕜] F) (C : ℝ) (hC : 0 ≤ C)
  (h : ∀ x, ‖A x‖ ≤ C * ‖x‖) : Continuous (A : E → F) := by sorry
