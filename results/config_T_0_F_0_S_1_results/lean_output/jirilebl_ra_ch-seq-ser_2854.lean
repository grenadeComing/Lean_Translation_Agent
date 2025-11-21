import Mathlib

/-- A real series is conditionally convergent if it converges but not absolutely. -/
def IsConditionallyConvergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable fun n => abs (a n)

/-- If a series is conditionally convergent, then the series of absolute values is not summable. -/
lemma conditionally_convergent_not_absolutely (a : ℕ → ℝ) (h : IsConditionallyConvergent a) :
  ¬ Summable fun n => abs (a n) := by sorry
