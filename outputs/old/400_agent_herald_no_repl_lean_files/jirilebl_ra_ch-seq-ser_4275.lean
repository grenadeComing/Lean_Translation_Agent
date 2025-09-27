import Mathlib

/-- A series is conditionally convergent if it converges but not absolutely. -/
def conditionally_convergent (f : ℕ → ℝ) : Prop :=
  Summable f ∧ ¬ Summable (fun n => |f n|)

/-- If ∑ a_n converges and ∑ |a_n| diverges, then the series is conditionally convergent. -/
theorem conditionally_convergent_of_convergent_not_abs {f : ℕ → ℝ} (h1 : Summable f)
  (h2 : ¬ Summable (fun n => |f n|)) : conditionally_convergent f := by sorry
