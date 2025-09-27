import Mathlib

/-- A sequence is conditionally convergent if it is summable but not absolutely summable. -/
def conditionally_convergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable fun n => |a n|

/-- If ∑ a_n converges and ∑ |a_n| diverges, then the series is conditionally convergent. -/
theorem cond_conv_of_convergent_not_absolutely {a : ℕ → ℝ}
  (h_conv : Summable a) (h_not_abs : ¬ Summable fun n => |a n|) : conditionally_convergent a := by sorry
