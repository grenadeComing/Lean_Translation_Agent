import Mathlib

/-!
Let (X, ‖·‖_X) and (Y, ‖·‖_Y) be normed vector spaces over a nontrivial normed field 𝕜.
If A : X →ₗ[𝕜] Y is linear and bounded (i.e. there exists C ≥ 0 with ‖A x‖ ≤ C ‖x‖ for all x),
then A (viewed as a function) is continuous.
-/

theorem linear_map_bounded_implies_continuous {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {X : Type*} [NormedAddCommGroup X] [NormedSpace 𝕜 X]
  {Y : Type*} [NormedAddCommGroup Y] [NormedSpace 𝕜 Y]
  (A : X →ₗ[𝕜] Y)
  (h : ∃ C : ℝ, 0 ≤ C ∧ ∀ x, ∥A x∥ ≤ C * ∥x∥) :
  Continuous (A : X → Y) := by sorry
