import Mathlib

/-- For any integers a, b, c, there exists a positive integer n such that
    sqrt(n^3 + a*n^2 + b*n + c) is not an integer. -/
theorem exists_n_not_perfect_square (a b c : Int) :
  ∃ n : Nat, 0 < n ∧ Int.sqrt (n^3 + a * n^2 + b * n + c) ^ 2 ≠ n^3 + a * n^2 + b * n + c := by sorry
