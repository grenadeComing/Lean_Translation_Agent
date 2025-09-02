import Mathlib

/-- Putnam 1998 B6: For any integers a, b, c, there exists a positive integer n such that
    sqrt(n^3 + a n^2 + b n + c) is not an integer.

    We state this by saying there is n > 0 such that no integer m satisfies m*m = n^3 + a n^2 + b n + c.
-/
theorem putnam_exercise_1998_b6 (a b c : Int) :
  ∃ n : Nat, n > 0 ∧ ¬ ∃ m : Int, m * m = (n : Int) ^ 3 + a * (n : Int) ^ 2 + b * (n : Int) + c := by sorry
