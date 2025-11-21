import Mathlib

/-!
Suppose ∑ a_n converges and ∑ |a_n| diverges. Show that the series is conditionally convergent.
This is encoded as: if `Summable a` and `¬ Summable (fun n => |a n|)`, then `Summable a ∧ ¬ Summable (fun n => |a n|)`.
-/

theorem series_conditionally_convergent_of_summable_not_summable_abs {a : ℕ → ℝ}
  (h_sum : Summable a) (h_abs_not : ¬ Summable fun n => |a n|) :
  Summable a ∧ ¬ Summable fun n => |a n| := by sorry
