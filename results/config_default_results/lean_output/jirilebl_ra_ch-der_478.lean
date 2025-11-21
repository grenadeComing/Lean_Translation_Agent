import Mathlib

/-
Suppose f : I → ℝ is differentiable at c ∈ I. Prove that there exist real numbers a and b
such that for every ε>0 there exists δ>0 with |a + b(x - c) - f(x)| ≤ ε |x - c|
whenever x ∈ I and |x - c| < δ. Equivalently, prove that there exists g : I → ℝ
with lim_{x→c} g(x) = 0 and |a + b(x - c) - f(x)| = |x - c| * g(x) for all x ∈ I near c.
-/

theorem differentiable_at_linear_approx_exists {I : Set ℝ} {f : ℝ → ℝ} {c : ℝ}
  (hc : c ∈ I) (hf : DifferentiableAt ℝ f c) :
  ∃ (a b : ℝ),
    (∀ ε : ℝ, ε > 0 → ∃ δ : ℝ, δ > 0 ∧ ∀ x : ℝ, x ∈ I → |x - c| < δ → |a + b * (x - c) - f x| ≤ ε * |x - c|)
    ∧ (∃ (g : ℝ → ℝ),
         (∀ ε : ℝ, ε > 0 → ∃ δ : ℝ, δ > 0 ∧ ∀ x : ℝ, x ∈ I → |x - c| < δ → |g x| < ε)
         ∧ ∃ δ' : ℝ, δ' > 0 ∧ ∀ x : ℝ, x ∈ I → |x - c| < δ' → |a + b * (x - c) - f x| = |x - c| * |g x|) := by sorry
