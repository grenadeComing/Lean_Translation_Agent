import Mathlib

/-- A sequence (a_n) is conditionally convergent if it is summable but not absolutely summable. -/
def is_conditionally_convergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable (fun n => |a n|)

/-- If a series converges but its series of absolute values diverges, then it is conditionally convergent. -/
theorem conditional_convergence_of_convergent_nonabsolutely {a : ℕ → ℝ}
  (h1 : Summable a) (h2 : ¬ Summable (fun n => |a n|)) :
  is_conditionally_convergent a := by
  sorry
