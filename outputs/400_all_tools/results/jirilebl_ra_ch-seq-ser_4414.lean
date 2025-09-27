import Mathlib

/-- Suppose ∑_{n=1}^∞ x_n is a series whose sequence of partial sums is bounded, and {λ_n} is a sequence with lim_{n→∞} λ_n = 0 and ∑_{n=1}^∞ |λ_{n+1}-λ_n| convergent. Show that ∑_{n=1}^∞ λ_n x_n converges. -/
theorem summable_schlomilch {x : ℕ → ℝ} (hx : Summable x) {λ : ℕ → ℝ} (hλ : Tendsto λ atTop (𝓝 0))
    (h : Summable fun n => |λ (n + 1) - λ n|) : Summable fun n => λ n * x n := by sorry
