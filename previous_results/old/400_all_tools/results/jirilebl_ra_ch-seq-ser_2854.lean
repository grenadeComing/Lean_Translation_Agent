import Mathlib

/-- A series ∑ a_n is conditionally convergent if it converges but not absolutely. -/
def is_conditionally_convergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable fun n => |a n|

theorem conditional_terms_not_abs_summable (a : ℕ → ℝ) (h : is_conditionally_convergent a) :
  ¬ Summable fun n => |a n| := by sorry
