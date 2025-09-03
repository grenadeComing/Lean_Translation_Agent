import Mathlib

/-!
# Putnam 2000 A2 (translation)

We state that there are infinitely many integers n such that n, n+1, n+2
are each the sum of two integer squares.
-/

theorem Putnam_exercise_2000_a2 :
  Set.Infinite { n : Int | ∃ a b c d e f : Int,
    n = a * a + b * b ∧ n + 1 = c * c + d * d ∧ n + 2 = e * e + f * f } := by
  sorry
