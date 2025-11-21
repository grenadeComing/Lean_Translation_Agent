import Mathlib

/-- A series is conditionally summable (conditionally convergent) if it converges but not absolutely. -/
def ConditionalSummable (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable (fun n => |a n|)

/-- If a series converges but the series of absolute values diverges, then it is conditionally summable. -/
theorem conditional_of_convergent_not_abs {a : ℕ → ℝ} (h1 : Summable a) (h2 : ¬ Summable (fun n => |a n|)) :
  ConditionalSummable a := by sorry
