import Mathlib

open Set

/-- Suppose f : R^n -> R is continuous on a compact set K ⊆ R^n and differentiable on the interior of K.
If f attains a maximum at x0 ∈ interior K, then fderiv ℝ f x0 = 0. -/
theorem fderiv_eq_zero_of_is_max_on {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] {f : E → ℝ} {K : Set E} {x₀ : E} :
  IsCompact K →
  ContinuousOn f K →
  DifferentiableOn ℝ f (interior K) →
  x₀ ∈ interior K →
  (∀ x ∈ K, f x ≤ f x₀) →
  fderiv ℝ f x₀ = 0 := by sorry
