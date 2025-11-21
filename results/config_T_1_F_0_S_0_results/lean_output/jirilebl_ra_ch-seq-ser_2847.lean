import Mathlib

/--
If \sum a_n converges and \sum |a_n| diverges, then the series is conditionally convergent.
This is expressed by stating that a is summable but its sequence of absolute values is not summable.
-/
theorem series_is_conditionally_convergent {a : ℕ → ℝ}
  (h_summable : Summable a) (h_not_abs_summable : ¬ Summable fun n => |a n|) :
  (Summable a ∧ ¬ Summable fun n => |a n|) := by sorry
