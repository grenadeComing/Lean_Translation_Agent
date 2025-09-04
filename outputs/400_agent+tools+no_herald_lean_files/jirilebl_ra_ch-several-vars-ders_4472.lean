import Mathlib

open Topology Set Filter Metric
open scoped Topology

/-!
Lemma: If f : E → F is differentiable on a convex set U and fderiv is continuous on U,
then the linear approximation error is little-o of h uniformly on compact subsets of U.
This formalizes the usual statement for F : ℝ^n → ℝ^n but is stated for normed spaces over ℝ.
-/

lemma uniform_fderiv_on_compact_of_continuous_on_fderiv {E F : Type*}
  [NormedAddCommGroup E] [NormedSpace ℝ E] [NormedAddCommGroup F] [NormedSpace ℝ F]
  {U : Set E} (hU : Convex ℝ U) (f : E → F)
  (h_diff : DifferentiableOn ℝ f U) (h_cont : ContinuousOn (fun x => fderiv ℝ f x) U) :
  ∀ K : Set E, IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : E, ‖h‖ < δ → x + h ∈ U →
      ‖f (x + h) - f x - (fderiv ℝ f x : E →L[ℝ] F) h‖ ≤ ε * ‖h‖ :=
by sorry
