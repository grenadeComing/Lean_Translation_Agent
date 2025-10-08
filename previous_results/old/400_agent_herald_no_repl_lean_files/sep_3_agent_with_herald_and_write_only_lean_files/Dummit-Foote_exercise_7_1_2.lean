import Mathlib

/-!
Exercise: Prove that if u is a unit in R then so is -u.
We state the lemma below. (Proof omitted.)
-/-

theorem isUnit_neg {R : Type _} [Ring R] {u : R} (h : IsUnit u) : IsUnit (-u) := by sorry
