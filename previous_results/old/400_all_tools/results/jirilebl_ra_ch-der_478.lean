import Mathlib

/-- Suppose f : ℝ → ℝ is differentiable at c ∈ ℝ. Then there exist real numbers a and b such that
for every ε>0 there exists δ>0 with |a + b(x-c) - f(x)| ≤ ε |x-c| whenever |x-c|<δ.
Equivalently, this expresses the usual linear approximation with remainder o(x-c).
-/
theorem differentiable_at.exists_linear_approx {f : ℝ → ℝ} {c : ℝ} (h : DifferentiableAt ℝ f c) :
  ∃ a b : ℝ, ∀ ε > 0, ∃ δ > 0, ∀ x : ℝ, |a + b * (x - c) - f x| ≤ ε * |x - c| := by sorry
