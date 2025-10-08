import Mathlib

/-- A real series is conditionally convergent if it converges but not absolutely. -/
def IsConditionallyConvergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable fun n => |a n|

/-- If a series converges but the series of absolute values diverges, then it is conditionally convergent. -/
theorem conditional_convergence_of_convergent_not_abs {a : ℕ → ℝ}
  (h1 : Summable a) (h2 : ¬ Summable fun n => |a n|) :
  IsConditionallyConvergent a := by sorry
