import Mathlib

/-- Exercise (Ireland & Rosen, 18.4).
1729 = 1^3 + 12^3 = 9^3 + 10^3, and 1729 is the smallest positive integer
that can be expressed as a sum of two different integer cubes in two ways.

We state the result; the proof is omitted (:= by sorry).
-/
theorem ireland_rosen_exercise_18_4 :
  (1 : Int)^3 + 12^3 = 1729 ∧ (9 : Int)^3 + 10^3 = 1729 ∧
  ∀ (n a b c d : Int),
    0 < n →
    a ≠ b → c ≠ d →
    a^3 + b^3 = n → c^3 + d^3 = n →
    ¬((a = c ∧ b = d) ∨ (a = d ∧ b = c)) →
    1729 ≤ n := by sorry
