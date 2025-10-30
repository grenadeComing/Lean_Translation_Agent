import Mathlib

/--
Suppose ∑ a_n converges and ∑ |a_n| diverges. Show that the series is conditionally convergent.
-/
def ConditionallyConvergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable (fun n => |a n|)

theorem conditional_convergence_of_convergent_not_abs (a : ℕ → ℝ)
  (hconv : Summable a)
  (habs : ¬ Summable (fun n => |a n|)) :
  ConditionallyConvergent a := by
  sorry
