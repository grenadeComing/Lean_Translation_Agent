import Mathlib

/-- Let F : ℝ^n → ℝ^n be differentiable and suppose DF exists and is continuous on a convex set U.
    Then the remainder is o(‖h‖) uniformly on compact subsets of U as h → 0. -/
theorem uniform_remainder_on_compact {E F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F]
  [NormedSpace ℝ E] [NormedSpace ℝ F] {U : Set E} (hU : Convex ℝ U)
  {f : E → F} (hd : DifferentiableOn ℝ f U) (hcont : ContinuousOn (fun x => fderiv ℝ f x) U) :
  ∀ K, IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : E, ‖h‖ < δ → x + h ∈ U → ‖f (x + h) - f x - fderiv ℝ f x h‖ ≤ ε * ‖h‖ := by sorry
