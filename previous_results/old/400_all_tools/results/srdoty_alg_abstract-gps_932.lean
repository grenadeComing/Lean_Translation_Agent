import Mathlib

/-!
Prove that the subgroups of (Z, +) are exactly the subgroups nZ for integers n.
This file contains only the statement (proof omitted, `sorry`).
-/

open AddSubgroup

theorem subgroups_int_eq_zmultiples :
  ∀ H : AddSubgroup ℤ, ∃ n : ℕ, H = AddSubgroup.zmultiples (n : ℤ) := by sorry
