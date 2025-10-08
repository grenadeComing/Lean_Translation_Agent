import Mathlib

/-!
Exercise: Let K be a finite field. Prove that the product of the nonzero elements of K is -1.
-/-

theorem Artin_exercise_13_6_10 (K : Type*) [Field K] [Fintype K] :
  (∏ x : K in (Finset.univ.erase (0 : K)), x) = -1 := by sorry
