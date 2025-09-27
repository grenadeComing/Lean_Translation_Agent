import Mathlib

open Set
open MeasureTheory

variable {n : ℕ}

/-- Rademacher's theorem (Euclidean case, convex domain):
If f : ℝ^n → ℝ is differentiable and Lipschitz on a convex set U, then f is differentiable almost everywhere on U. -/
theorem rademacher_on_convex
  {U : Set (Fin n → ℝ)} (hU : Convex ℝ U)
  {f : (Fin n → ℝ) → ℝ}
  (hd : DifferentiableOn ℝ f U)
  (hL : ∃ K : NNReal, LipschitzOnWith K f U) :
  ∀ᵐ x ∂(volume : Measure (Fin n → ℝ)), x ∈ U → DifferentiableAt ℝ f x := by sorry
