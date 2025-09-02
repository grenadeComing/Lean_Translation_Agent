import Mathlib

open BigOperators

theorem Rudin_exercise_3_13 {a b : ℕ → ℝ} (ha : Summable fun n => |a n|) (hb : Summable fun n => |b n|) :
  Summable fun n => |Finset.sum (Finset.range (n+1)) fun k => a k * b (n - k)| := by
  sorry
