import Mathlib

/-- A series is conditionally convergent if it converges but not absolutely. -/
def conditionally_convergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable fun n => |a n|

/-- If ∑ a_n converges but ∑ |a_n| diverges, then the series is conditionally convergent. -/
theorem conditionally_convergent_of_convergent_not_abs (a : ℕ → ℝ)
  (h_sum : Summable a) (h_abs : ¬ Summable fun n => |a n|) :
  conditionally_convergent a := by sorry
