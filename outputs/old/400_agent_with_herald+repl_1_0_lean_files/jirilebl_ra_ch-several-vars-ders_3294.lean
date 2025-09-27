import Mathlib

open MeasureTheory Set Filter

variable {n : ℕ} {K : ℝ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}

/-- Rademacher's theorem (Euclidean version):
A Lipschitz function on a convex set U ⊆ ℝ^n is differentiable almost everywhere on U
with respect to the Lebesgue measure (volume). -/
theorem rademacher_on_of_lipschitz_on (hL : LipschitzOnWith K f U) (hU : Convex ℝ U) :
  ∀ᵐ x ∂(MeasureTheory.Measure.volume.restrict U), DifferentiableAt ℝ f x := by sorry
