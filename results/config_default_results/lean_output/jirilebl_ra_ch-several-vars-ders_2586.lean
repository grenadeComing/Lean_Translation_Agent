import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- Suppose f : ℝ^n → ℝ is continuous on a compact set K ⊂ ℝ^n and differentiable on the interior of K.
If f attains a maximum at x0 ∈ interior(K), then Df(x0) = 0. -/
theorem fderiv_eq_zero_of_is_max_of_differentiable_on {K : Set E} {f : E → ℝ}
  (hK : IsCompact K) (hcont : ContinuousOn f K) (hdiff : DifferentiableOn ℝ f (interior K))
  {x0 : E} (hx0 : x0 ∈ interior K) (hmax : ∀ x ∈ K, f x ≤ f x0) :
  fderiv ℝ f x0 = 0 := by sorry
