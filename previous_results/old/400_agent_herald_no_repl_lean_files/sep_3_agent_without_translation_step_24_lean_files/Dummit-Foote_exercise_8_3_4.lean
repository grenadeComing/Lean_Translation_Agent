import Mathlib

/-!
Exercise (Dummit & Foote, 8.3.4).
If an integer is the sum of two rational squares, then it is the sum of two integer squares.
-/

theorem Dummit_Foote_exercise_8_3_4 (n : Int) :
  (∃ a b : ℚ, (a ^ 2 + b ^ 2 : ℚ) = (n : ℚ)) → ∃ x y : Int, x ^ 2 + y ^ 2 = n := by
  sorry
