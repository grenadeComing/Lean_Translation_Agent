import Mathlib

/-!
Translate: Suppose f : I → ℝ is differentiable at c ∈ I. Prove that there exist real numbers a and b such that for every ε>0 there exists δ>0 with |a+b(x-c)-f(x)| ≤ ε|x-c| whenever x∈I and |x-c|<δ.
Equivalently, prove that there exists a function g : I → ℝ with lim_{x→c} g(x)=0 and |a+b(x-c)-f(x)|= |x-c| g(x) for all x∈I near c.

The statements are given below; proofs are omitted (:= by sorry).
-/

open Filter

theorem differentiable_at.exists_linear_approx {f : ℝ → ℝ} {c : ℝ}
  (h : DifferentiableAt ℝ f c) :
  ∃ (a b : ℝ), ∀ ε > 0, ∃ δ > 0, ∀ x, |x - c| < δ → |a + b * (x - c) - f x| ≤ ε * |x - c| := by
  sorry

theorem differentiable_at.exists_linear_approx_with_g {f : ℝ → ℝ} {c : ℝ}
  (h : DifferentiableAt ℝ f c) :
  ∃ (a b : ℝ) (g : ℝ → ℝ) (δ : ℝ), δ > 0 ∧ Tendsto g (nhds c) (nhds 0) ∧
    (∀ x, |x - c| < δ → |a + b * (x - c) - f x| = |x - c| * g x) := by
  sorry
