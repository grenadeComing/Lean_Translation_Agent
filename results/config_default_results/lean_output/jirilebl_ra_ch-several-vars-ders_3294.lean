import Mathlib

/-!
Rademacher's theorem for Lipschitz functions on a convex subset of R^n:
If U ⊆ R^n is convex and f : R^n → ℝ is Lipschitz on U, then f is
differentiable almost everywhere on U.
-/

open MeasureTheory

theorem rademacher_on_convex {n : ℕ} {U : Set (Fin n → ℝ)} (hU : Convex ℝ U)
  {K : NNReal} {f : (Fin n → ℝ) → ℝ} (hf : LipschitzOnWith K f U) :
  ∀ᵐ x ∂(volume.restrict U), DifferentiableAt ℝ f x := by sorry
