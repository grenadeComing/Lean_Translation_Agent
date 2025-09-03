import Mathlib

/-!
An element x of a ring R is called nilpotent if some power of x is zero.
Prove that if x is nilpotent, then 1 + x is a unit in R.
-/

theorem artin_exercise_10_1_13 {R : Type _} [Ring R] {x : R} (hx : IsNilpotent x) : IsUnit (1 + x) := by
  sorry
