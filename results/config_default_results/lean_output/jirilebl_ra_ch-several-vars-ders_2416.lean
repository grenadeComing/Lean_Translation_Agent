import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F] [NormedSpace 𝕜 E] [NormedSpace 𝕜 F]

/-- Let A be a linear operator on R^n. The operator norm defined by `‖A‖ = max { ‖A x‖ : ‖x‖ = 1 }` is equal to the supremum over the closed unit ball and the open unit ball. -/
theorem continuous_linear_map.opNorm_eq_supr_unit_sphere_ball (f : E →L[𝕜] F) :
  (‖f‖ = ⨆ x : {x : E // ‖x‖ = 1}, ‖f x.1‖) ∧
  (‖f‖ = ⨆ x : {x : E // ‖x‖ ≤ 1}, ‖f x.1‖) ∧
  (‖f‖ = ⨆ x : {x : E // ‖x‖ < 1}, ‖f x.1‖) := by sorry
