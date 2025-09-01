import Mathlib

theorem putnam_exercise_2018_b2 (n : ℕ) (hn : 0 < n) (z : Complex) (hz : Complex.abs z ≤ 1) :
  (Finset.sum (Finset.range n) fun k => ((n - k : ℕ) : Complex) * z ^ k) ≠ 0 := by
  sorry
