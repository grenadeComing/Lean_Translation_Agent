import Mathlib

open Set

/-- If A is a nonempty set of real numbers which is bounded below, then
    inf A = - sup (-A), where -A = { -x | x ∈ A }. -/
theorem inf_eq_neg_sup_neg {A : Set ℝ} (hne : A.Nonempty) (hbl : BddBelow A) :
  Inf A = -Sup (A.image fun x => -x) := by sorry
