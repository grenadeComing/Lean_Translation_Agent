import Mathlib

/-- A sequence is conditionally convergent if it is convergent but not absolutely convergent. -/
def conditionally_convergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable (fun n => |a n|)

/-- If the series ∑ a_n converges but ∑ |a_n| diverges, then the series is conditionally convergent. -/
theorem conditional_convergence_of_convergent_nonabsolutely {a : ℕ → ℝ} (h1 : Summable a)
  (h2 : ¬ Summable (fun n => |a n|)) : conditionally_convergent a := by sorry
