import Mathlib

/-!
Rademacher's theorem for Lipschitz functions on a convex subset of R^n.
This file states the theorem (without proof): a Lipschitz function on a convex
subset U of R^n is differentiable almost everywhere (w.r.t. Lebesgue measure
restricted to U).
-/

open Set MeasureTheory

variable {n : ℕ}

lemma rademacher_on_convex (f : (Fin n → ℝ) → ℝ) {U : Set (Fin n → ℝ)}
  (hconv : Convex ℝ U) {K : NNReal} (hL : LipschitzOnWith K f U) :
  ∀ᵐ x ∂(volume.restrict U), DifferentiableAt ℝ f x := by sorry
