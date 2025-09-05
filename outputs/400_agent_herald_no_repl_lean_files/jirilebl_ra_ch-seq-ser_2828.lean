import Mathlib

/-- If a series of real numbers converges absolutely, then any rearrangement has the same sum. -/
theorem absolute_summable_rearrangement (a : ℕ → ℝ) (σ : Equiv ℕ ℕ) (h : Summable fun n => |a n|) :
  (∑' n, a (σ n)) = (∑' n, a n) := by sorry
