import Mathlib

open Set Metric

/--
If f : E → ℝ is C^2 on a convex set U with continuous second derivative, then the
second-order Taylor expansion is uniform on compact subsets of U. The statement is
formulated in terms of the Fréchet derivative fderiv and its derivative.
-/
lemma taylor_second_uniform_on_compact
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  {U : Set E} (hU : Convex U) {f : E → ℝ} (hcont : ContDiffOn ℝ 2 f U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : E, ‖h‖ < δ → x + h ∈ U →
      |f (x + h) - f x - (fderiv ℝ f x : E →L[ℝ] ℝ) h - (1/2) * ((fderiv ℝ (fun x => fderiv ℝ f x) x) h) h|
      ≤ ε * ‖h‖^2 := by sorry
