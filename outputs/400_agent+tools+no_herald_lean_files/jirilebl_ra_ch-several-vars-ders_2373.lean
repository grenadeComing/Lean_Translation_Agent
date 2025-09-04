import Mathlib

variable {K : Type*} [NormedField K]
variable {X Y : Type*} [NormedAddCommGroup X] [NormedAddCommGroup Y]
variable [NormedSpace K X] [NormedSpace K Y]

/-- If a linear map is bounded (uniform bound by a constant times the norm), then it is continuous. -/
theorem linear_map.bounded_implies_continuous (A : X →ₗ[K] Y)
  (C : ℝ) (h_bound : ∀ x, ‖A x‖ ≤ C * ‖x‖) : Continuous (A : X → Y) := by
  sorry
