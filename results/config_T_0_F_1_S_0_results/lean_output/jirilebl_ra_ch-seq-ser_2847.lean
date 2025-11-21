import Mathlib

/-- A series is conditionally convergent if it converges but does not converge absolutely. -/
def IsConditionallyConvergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable (fun n => |a n|)

theorem conditional_convergence_of_convergent_not_absolutely (a : ℕ → ℝ) :
  Summable a → ¬ Summable (fun n => |a n|) → IsConditionallyConvergent a := by
  sorry
