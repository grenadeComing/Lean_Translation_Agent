import Mathlib

/-
Exercise: Prove that every nonzero ideal in the ring of Gauss integers contains a nonzero integer.
File: Artin_exercise_10_6_7.lean
-/

theorem Artin_exercise_10_6_7 (I : Ideal GaussianInt) (h : I ≠ ⊥) :
  ∃ n : Int, n ≠ 0 ∧ (n : GaussianInt) ∈ I := by sorry
