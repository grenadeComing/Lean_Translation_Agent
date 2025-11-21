import Mathlib

/-- Rademacher's theorem for finite-dimensional real normed spaces: if f is Lipschitz on a convex
set U in a finite-dimensional real normed space E (so in particular on ℝ^n), then f is
almost-everywhere differentiable on U. -/
theorem rademacher_on_convex {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  [FiniteDimensional ℝ E] {f : E → ℝ} {U : Set E} (hU : Convex ℝ U) {K : NNReal}
  (hf : LipschitzOnWith K f U) :
  ∀ᵐ x ∂(volume.restrict U), DifferentiableAt ℝ f x := by sorry