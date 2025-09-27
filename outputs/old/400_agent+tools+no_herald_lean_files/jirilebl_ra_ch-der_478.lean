import Mathlib

/-!
Suppose f : I → ℝ is differentiable at c ∈ I. Then there exist real numbers a and b such that
for every ε>0 there exists δ>0 with |a + b(x-c) - f(x)| ≤ ε|x-c| whenever x∈I and |x-c|<δ.
Equivalently, there exists g with lim_{x→c} g(x)=0 and |a + b(x-c) - f(x)| = |x-c| g(x) for x near c.
-/

theorem differentiable_within_at.exists_linear_approx {f : ℝ → ℝ} {s : Set ℝ} {c : ℝ}
  (h : DifferentiableWithinAt ℝ f s c) :
  ∃ a b : ℝ, ∀ ε > 0, ∃ δ > 0, ∀ x, x ∈ s → |x - c| < δ → |a + b * (x - c) - f x| ≤ ε * |x - c| := by
  sorry
