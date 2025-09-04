import Mathlib

open BigOperators

variable {a b : ℕ → ℝ}

def c (n : ℕ) : ℝ := ∑ k in Finset.range (n + 1), a k * b (n - k)

theorem abs_summable_convolution (ha : Summable fun n => |a n|) (hb : Summable fun n => |b n|) :
  Summable fun n => |c n| ∧ (∑' n, c n) = (∑' n, a n) * (∑' n, b n) := by sorry
