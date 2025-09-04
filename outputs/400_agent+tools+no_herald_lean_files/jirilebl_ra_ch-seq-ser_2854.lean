import Mathlib

/-- A real series is conditionally convergent if it converges but does not converge absolutely. -/
def is_conditionally_convergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable (fun n => |a n|)

/-- If a series is conditionally convergent, then it is not absolutely convergent. -/
theorem conditional_convergence_not_absolute (a : ℕ → ℝ) (h : is_conditionally_convergent a) :
  ¬ Summable (fun n => |a n|) := by sorry
