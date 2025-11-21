import Mathlib

/-!
Translate: Suppose f : I → ℝ is differentiable at c ∈ I. Prove that
there exist real numbers a and b such that for every ε>0 there exists δ>0 with
|a + b(x-c) - f(x)| ≤ ε |x-c| whenever x ∈ I and |x-c| < δ.
Equivalently, prove that there exists g : I → ℝ with lim_{x→c} g(x) = 0 and
|a + b(x-c) - f(x)| = |x-c| g(x) for all x ∈ I near c.
-/

theorem jirilebl_ra_ch_der_478 {I : Set ℝ} {f : ℝ → ℝ} {c : ℝ}
  (hc : c ∈ I) (h : DifferentiableWithinAt ℝ f I c) :
  (∃ a b : ℝ, ∀ ε > 0, ∃ δ > 0, ∀ x ∈ I, |x - c| < δ → |a + b * (x - c) - f x| ≤ ε * |x - c|)
  ∧
  (∃ a b : ℝ, ∃ g : ℝ → ℝ,
    (∃ δ0 > 0, ∀ x ∈ I, |x - c| < δ0 → |a + b * (x - c) - f x| = |x - c| * g x)
    ∧
    (∀ ε > 0, ∃ δ > 0, ∀ x ∈ I, |x - c| < δ → |g x| < ε)) := by sorry
