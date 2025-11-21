import Mathlib

/-- A series is conditionally summable if it converges but not absolutely. -/
def ConditionallySummable (a : ℕ → ℝ) : Prop := Summable a ∧ ¬ Summable (fun n => |a n|)

/-- If a series is conditionally summable, then it is not absolutely summable. -/
theorem conditionally_convergent_not_absolutely {a : ℕ → ℝ} (h : ConditionallySummable a) : ¬ Summable (fun n => |a n|) := by sorry
