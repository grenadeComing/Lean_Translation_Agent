import Mathlib

/--
If ∑ a_n converges but ∑ |a_n| diverges, then the series is conditionally convergent.
We express conditional convergence as: the series is summable but not absolutely summable.
-/
theorem series_conditionally_convergent {a : Nat → ℝ} (h1 : Summable a) (h2 : ¬ Summable fun n => |a n|) :
  Summable a ∧ ¬ Summable fun n => |a n| := by
  sorry
