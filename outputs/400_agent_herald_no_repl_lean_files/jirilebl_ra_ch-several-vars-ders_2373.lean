import Mathlib

variables {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variables {X Y : Type*} [NormedAddCommGroup X] [NormedAddCommGroup Y]
variables [NormedSpace 𝕜 X] [NormedSpace 𝕜 Y]

/-- If a linear map is bounded (there exists M with ‖A x‖ ≤ M ‖x‖ for all x), then it is continuous. -/
lemma linear_map_bounded_continuous (A : X →ₗ[𝕜] Y) (M : ℝ) (hM : 0 ≤ M)
  (h_bound : ∀ x : X, ‖A x‖ ≤ M * ‖x‖) : Continuous (A : X → Y) := by sorry
