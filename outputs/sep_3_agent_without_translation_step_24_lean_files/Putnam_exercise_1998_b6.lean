import Mathlib

/-
Putnam 1998 B6: For any integers a, b, c, there exists a positive integer n such that
sqrt(n^3 + a n^2 + b n + c) is not an integer.
-/

theorem putnam_exercise_1998_b6 (a b c : Int) :
  ∃ n : Int, 0 < n ∧ ¬ IsSquare (n ^ 3 + a * n ^ 2 + b * n + c) := by
  sorry
