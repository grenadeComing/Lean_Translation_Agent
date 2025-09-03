import Mathlib

/-!
# Putnam 2000 A2 (statement)

We state the result: there are infinitely many integers n such that n, n+1, n+2
are each the sum of two integer squares. The proof is omitted (sorry).
-/

theorem putnam2000_a2 :
  Set.Infinite { n : Int |
    ∃ a b : Int, n = a^2 + b^2 ∧
    ∃ c d : Int, n + 1 = c^2 + d^2 ∧
    ∃ e f : Int, n + 2 = e^2 + f^2 } := by sorry
