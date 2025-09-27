import Mathlib
open Set Filter
open scoped Topology

variables {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

theorem fderiv_uniform_o_small_on_compact {U : Set E} (hU_convex : Convex ℝ U)
  {f : E → E} (h_diff : DifferentiableOn ℝ f U) (h_cont : ContinuousOn (fun x => fderiv ℝ f x) U) :
  ∀ {K : Set E}, IsCompact K → K ⊆ U →
  ∀ ε > 0, ∃ δ > 0, ∀ x h, x ∈ K → ‖h‖ < δ → x + h ∈ U →
    ‖f (x + h) - f x - (fderiv ℝ f x : E →L[ℝ] E) h‖ ≤ ε * ‖h‖ := by sorry
