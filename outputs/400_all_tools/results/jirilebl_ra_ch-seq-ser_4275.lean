import Mathlib
open Set

/-- Let a : ℕ → ℝ. Suppose the series ∑ a_n converges and the series ∑ |a_n| diverges. Show that the series is conditionally convergent. -/

def conditionally_convergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable fun n => |a n|

theorem conditional_of_convergent_not_abs_summable (a : ℕ → ℝ) (h1 : Summable a) (h2 : ¬ Summable (fun n => |a n|)) :
  conditionally_convergent a := by
  -- by definition
  show Summable a ∧ ¬ Summable fun n => |a n|
  exact And.intro h1 h2
