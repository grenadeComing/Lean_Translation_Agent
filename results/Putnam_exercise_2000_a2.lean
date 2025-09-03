import Mathlib

/-!
Putnam 2000 A2.
There exist infinitely many integers n such that n, n+1, n+2 are each the sum of two squares.
-/

theorem Putnam_2000_A2 :
  Set.Infinite { n : Int | ∃ a b : Int, ∃ c d : Int, ∃ e f : Int,
    n = a*a + b*b ∧ n + 1 = c*c + d*d ∧ n + 2 = e*e + f*f } := by
  sorry
