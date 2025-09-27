import Mathlib

/--
Putnam 1998 B6:
For any integers a, b, c, there exists a positive integer n such that
sqrt(n^3 + a n^2 + b n + c) is not an integer.
We state this by saying there is a natural n > 0 for which the integer
n^3 + a n^2 + b n + c is not a perfect square in Z.
-/
theorem putnam_exercise_1998_b6 (a b c : Int) :
  ∃ n : Nat, 0 < n ∧ ¬ ∃ m : Int, m * m = (n : Int) ^ 3 + a * (n : Int) ^ 2 + b * (n : Int) + c :=
by sorry
