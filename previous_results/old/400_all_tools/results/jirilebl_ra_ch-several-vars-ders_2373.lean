import Mathlib

/-- If A : X →ₗ[𝕜] Y is linear and bounded (∃ M, ∀ x, ‖A x‖ ≤ M * ‖x‖) then A is continuous. -/
theorem linear_bounded_continuous {𝕜 : Type*} [NormedField 𝕜] {X Y : Type*}
  [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedSpace 𝕜 X] [NormedSpace 𝕜 Y]
  (A : X →ₗ[𝕜] Y) (M : ℝ) (h : ∀ x, ‖A x‖ ≤ M * ‖x‖) : Continuous (A : X → Y) := by
  sorry
