import Mathlib

open Set

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

/-- Suppose f : E → ℝ is continuous on a compact set K ⊆ E and differentiable on the interior of K.
If f attains a maximum at x0 ∈ interior K, then the (Fréchet) derivative at x0 is 0. -/
theorem max_on_compact_interior_has_fderiv_zero
  {K : Set E} {f : E → ℝ} {x0 : E}
  (hK : IsCompact K) (hcont : ContinuousOn f K) (hdiff : DifferentiableOn ℝ f (interior K))
  (hx0 : x0 ∈ interior K) (hmax : ∀ x ∈ K, f x ≤ f x0) :
  fderiv ℝ f x0 = 0 := by sorry
