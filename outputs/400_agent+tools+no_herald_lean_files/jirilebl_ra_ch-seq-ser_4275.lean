import Mathlib

/-- A real series is conditionally convergent if it converges but not absolutely -/
def ConditionallyConvergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable (fun n => |a n|)

/-- If a series converges but its series of absolute values diverges, then it is conditionally convergent. -/
theorem cond_conv_of_convergent_not_abs {a : ℕ → ℝ} (h_sum : Summable a)
  (h_not_abs : ¬ Summable (fun n => |a n|)) :
  ConditionallyConvergent a := by sorry
