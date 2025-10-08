import Mathlib

open Filter

variable {I : Set ℝ} {f : ℝ → ℝ} {c : ℝ}

/-- If f is differentiable at c (with c in I), then f has a linear approximation there.
    There exist real a and b such that for every ε>0 there is δ>0 with
    |a + b*(x-c) - f x| ≤ ε * |x-c| whenever x ∈ I and |x-c| < δ.
    Equivalently, there exists g : ℝ → ℝ with tendsto g (nhdsWithin c I) (nhds 0)
    and for x ∈ I, x ≠ c, |a + b*(x-c) - f x| = |x-c| * g x. -/
theorem differentiable_at_linear_approx (hI : c ∈ I) (hf : DifferentiableAt ℝ f c) :
  ∃ a b : ℝ,
    (∀ ε > 0, ∃ δ > 0, ∀ x ∈ I, |x - c| < δ → |a + b * (x - c) - f x| ≤ ε * |x - c|) ∧
    (∃ g : ℝ → ℝ, Tendsto g (nhdsWithin c I) (nhds 0) ∧ ∀ x ∈ I, x ≠ c → |a + b * (x - c) - f x| = |x - c| * g x) := by sorry
