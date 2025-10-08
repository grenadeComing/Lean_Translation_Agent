import Mathlib

open Set

/-- Suppose f : E → ℝ is continuous on a compact set K ⊂ E and differentiable on the interior of K.
If f attains a maximum at x0 ∈ interior K, then the derivative of f at x0 is zero. -/
theorem max_on_interior_has_fderiv_zero {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {K : Set E} {f : E → ℝ} {x0 : E}
  (hK : IsCompact K) (hcont : ContinuousOn f K) (hdiff : DifferentiableOn ℝ f (interior K))
  (hx : x0 ∈ interior K) (hmax : ∀ y ∈ K, f y ≤ f x0) :
  fderiv ℝ f x0 = 0 := by sorry
