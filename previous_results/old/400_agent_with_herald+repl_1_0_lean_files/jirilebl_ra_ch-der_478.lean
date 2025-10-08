import Mathlib

/-- If f : ℝ → ℝ has a derivative f' at c within the set I,
then f admits a first-order linear approximation at c: there exist real
numbers a and b such that a + b (x-c) approximates f(x) up to o(x-c).
This is expressed by the usual ε-δ formulation. -/
theorem differentiable_within_at_linear_approx {I : Set ℝ} {f : ℝ → ℝ} {c f' : ℝ}
  (hc : c ∈ I) (h : HasDerivWithinAt f f' I c) :
  ∃ a b : ℝ, ∀ ε > 0, ∃ δ > 0, ∀ x, x ∈ I → |x - c| < δ → |a + b * (x - c) - f x| ≤ ε * |x - c| := by
  sorry

/-- Equivalently: there exist a, b and a function g with g(x) → 0 as x → c
in the ε-δ sense such that |a + b(x-c) - f(x)| = |x-c| * g(x) for x near c. -/
theorem differentiable_within_at_linear_approx_eq_g {I : Set ℝ} {f : ℝ → ℝ} {c f' : ℝ}
  (hc : c ∈ I) (h : HasDerivWithinAt f f' I c) :
  ∃ a b : ℝ, ∃ g : ℝ → ℝ,
    (∀ ε > 0, ∃ δ > 0, ∀ x, x ∈ I → |x - c| < δ → |g x| ≤ ε) ∧
    (∀ x, x ∈ I → |a + b * (x - c) - f x| = |x - c| * g x) := by
  sorry
