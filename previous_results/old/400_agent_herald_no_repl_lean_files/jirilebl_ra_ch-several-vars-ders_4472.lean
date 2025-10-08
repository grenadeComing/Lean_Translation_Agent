import Mathlib

open Set Filter

variable {E : Type*} {Fv : Type*}
  [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  [NormedAddCommGroup Fv] [NormedSpace ℝ Fv]

/-- Let F : ℝ^n → ℝ^n be differentiable and suppose DF exists and is continuous on a convex set U.
    Then ‖F(x+h) - F(x) - DF(x) h‖ = o(‖h‖) uniformly on compact subsets of U as h → 0. -/
theorem little_o_uniform_on_compact_of_cont_fderiv {F : E → Fv} {U : Set E}
  (hU_conv : Convex ℝ U)
  (h_has : ∀ x ∈ U, HasFderivAt F (fderiv ℝ F x) x)
  (h_cont : ContinuousOn (fun x => fderiv ℝ F x) U) :
  ∀ K, IsCompact K → K ⊆ U →
    IsLittleO (fun h => ⨆ (x : E) (hx : x ∈ K), ‖F (x + h) - F x - fderiv ℝ F x h‖) (fun h => ‖h‖) (𝓝 0) := by sorry
