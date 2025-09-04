import Mathlib

open Filter

theorem differentiable_within_at.exists_linear_approx {I : Set ℝ} {f : ℝ → ℝ} {c : ℝ}
  (hc : c ∈ I) (h : DifferentiableWithinAt ℝ f I c) :
  ∃ (a b : ℝ), ∀ ε > 0, ∃ δ > 0, ∀ x ∈ I, |x - c| < δ → |a + b * (x - c) - f x| ≤ ε * |x - c| := by
  sorry

theorem differentiable_within_at.exists_g {I : Set ℝ} {f : ℝ → ℝ} {c : ℝ}
  (hc : c ∈ I) (h : DifferentiableWithinAt ℝ f I c) :
  ∃ (a b : ℝ) (g : ℝ → ℝ), Filter.Tendsto g (nhds c) (nhds 0) ∧ (∀ x ∈ I, |a + b * (x - c) - f x| = |x - c| * g x) := by
  sorry
