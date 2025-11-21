import Mathlib

/-- Suppose \sum_{n=1}^\infty a_n converges absolutely. Show that for any rearrangement of the series, the sum remains the same. -/
theorem tsum_eq_tsum_of_rearrangement {a : ℕ → ℝ} (h : Summable fun n => |a n|) {σ : ℕ → ℕ} (hbij : Function.Bijective σ) : (∑' n, a (σ n)) = ∑' n, a n := by sorry