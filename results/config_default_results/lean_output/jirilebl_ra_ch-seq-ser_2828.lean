import Mathlib
open Filter Finset Function

/-- Suppose \sum_{n=1}^\infty a_n converges absolutely. Show that for any rearrangement of the series, the sum remains the same. -/
theorem rearrangement_of_abs_summable {a : ℕ → ℝ} (ha : Summable fun n => |a n|) (σ : Equiv ℕ ℕ) :
    tsum (fun n => a (σ n)) = tsum a := by sorry
