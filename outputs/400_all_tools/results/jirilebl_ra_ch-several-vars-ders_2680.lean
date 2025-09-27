import Mathlib

open Topology Filter

/-- Suppose f : R^n → R is differentiable in a neighborhood of x0 ∈ R^n and that Df is continuous at x0.
    Then f is differentiable at x0. (C^1 implies differentiability.) -/
theorem C1_implies_differentiable_at {n : ℕ} {f : (Fin n → ℝ) → ℝ} {x0 : Fin n → ℝ}
  (h_diff : ∀ᶠ x in (𝓝 x0), DifferentiableAt ℝ f x)
  (h_cont : ContinuousAt (fun x => fderiv ℝ f x) x0) :
  DifferentiableAt ℝ f x0 := by sorry
