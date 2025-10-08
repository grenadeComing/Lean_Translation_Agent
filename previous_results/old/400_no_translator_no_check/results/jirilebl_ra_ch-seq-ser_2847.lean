import Mathlib

/-- A sequence a : ℕ → ℝ is conditionally convergent if it is summable but not absolutely summable. -/
def ConditionallyConvergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable fun n => |a n|

/-- If the series ∑ a_n converges and ∑ |a_n| diverges, then the series is conditionally convergent. -/
theorem conditional_of_convergent_not_abs {a : ℕ → ℝ} (h1 : Summable a) (h2 : ¬ Summable fun n => |a n|) :
  ConditionallyConvergent a := by sorry
