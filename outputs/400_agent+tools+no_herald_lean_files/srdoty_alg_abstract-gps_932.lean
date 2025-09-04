import Mathlib

/-!
Classification of additive subgroups of (ℤ, +): every additive subgroup of Int is of the form nℤ.
-/

theorem subgroups_int_are_nz (H : AddSubgroup Int) :
  ∃ n : Int, (H : Set Int) = { m : Int | ∃ k : Int, m = n * k } := by sorry
