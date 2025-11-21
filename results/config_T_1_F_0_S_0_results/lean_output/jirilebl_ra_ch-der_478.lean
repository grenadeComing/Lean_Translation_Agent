import Mathlib

/-- Suppose f : I → ℝ is differentiable at c ∈ I. Then there exist real numbers a and b such that
for every ε > 0 there exists δ > 0 with |a + b (x - c) - f x| ≤ ε |x - c| whenever x ∈ I and |x - c| < δ. -/
theorem exists_affine_approx_of_differentiable_at {I : Set ℝ} {f : ℝ → ℝ} {c : ℝ}
  (hf : DifferentiableAt ℝ f c) (hc : c ∈ I) :
  ∃ a b : ℝ, ∀ ε > 0, ∃ δ > 0, ∀ x, x ∈ I → |x - c| < δ → |a + b * (x - c) - f x| ≤ ε * |x - c| := by sorry

/-- Equivalently: there exists a function g : ℝ → ℝ with lim_{x→c} g(x) = 0 and
|a + b (x - c) - f x| = |x - c| * g x for all x ∈ I near c. -/
theorem exists_g_of_differentiable_at {I : Set ℝ} {f : ℝ → ℝ} {c : ℝ}
  (hf : DifferentiableAt ℝ f c) (hc : c ∈ I) :
  ∃ (a b : ℝ) (g : ℝ → ℝ), Tendsto g (𝓝 c) (𝓝 0) ∧ ∃ δ > 0, ∀ x, x ∈ I → |x - c| < δ → |a + b * (x - c) - f x| = |x - c| * g x := by sorry