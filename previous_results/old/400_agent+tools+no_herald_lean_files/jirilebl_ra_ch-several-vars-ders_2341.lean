import Mathlib

variables {𝕜 : Type _} [NontriviallyNormedField 𝕜]
variables {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedSpace 𝕜 X] [NormedSpace 𝕜 Y]

open ContinuousLinearMap

/-- If A and B are bounded (continuous) linear maps, then A + B is bounded. -/
theorem add_bounded (A B : X →L[𝕜] Y) : ∀ x, ‖(A + B) x‖ ≤ (‖A‖ + ‖B‖) * ‖x‖ := by
  sorry

/-- If `a` is a scalar and A is a bounded linear map, then `a • A` is bounded. -/
theorem smul_bounded (a : 𝕜) (A : X →L[𝕜] Y) : ∀ x, ‖(a • A) x‖ ≤ (‖a‖ * ‖A‖) * ‖x‖ := by
  sorry

/-- The operator norm is nonnegative. -/
theorem op_norm_nonneg (f : X →L[𝕜] Y) : 0 ≤ ‖f‖ := by
  sorry

/-- The operator norm vanishes only for the zero map. -/
theorem op_norm_eq_zero_iff (f : X →L[𝕜] Y) : ‖f‖ = 0 ↔ f = 0 := by
  sorry

/-- The operator norm satisfies the triangle inequality. -/
theorem op_norm_triangle (f g : X →L[𝕜] Y) : ‖f + g‖ ≤ ‖f‖ + ‖g‖ := by
  sorry
