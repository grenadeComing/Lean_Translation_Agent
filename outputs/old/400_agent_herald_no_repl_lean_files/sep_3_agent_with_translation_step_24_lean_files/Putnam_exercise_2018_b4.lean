import Mathlib

/-- Putnam 2018 B4: Given a real number `a`, define a sequence by `x 0 = 1`, `x 1 = x 2 = a`,
and `x (n+1) = 2 * x n * x (n-1) - x (n-2)` for `n ≥ 2`.
If `x n = 0` for some `n`, then the sequence is periodic. -/
theorem putnam_exercise_2018_b4 (a : Real) (x : Nat → Real)
  (h0 : x 0 = 1) (h1 : x 1 = a) (h2 : x 2 = a)
  (hrec : ∀ n : Nat, n ≥ 2 → x (n+1) = 2 * x n * x (n-1) - x (n-2)) :
  (∃ n, x n = 0) → ∃ p : Nat, p > 0 ∧ ∀ m : Nat, x (m + p) = x m := by sorry
