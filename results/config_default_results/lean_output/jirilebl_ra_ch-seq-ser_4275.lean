import Mathlib

/-- A real series is conditionally convergent if it converges but not absolutely. -/
def IsConditionallyConvergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable fun n => |a n|

/-- If ∑ a_n converges and ∑ |a_n| diverges, then the series is conditionally convergent. -/
theorem series_is_conditionally_convergent (a : ℕ → ℝ)
  (h_sum : Summable a) (h_abs_div : ¬ Summable fun n => |a n|) :
  IsConditionallyConvergent a := by sorry