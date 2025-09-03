import Mathlib

/-!
Exercise 18.4 (Ireland & Rosen): Show that 1729 is the smallest positive integer
expressible as the sum of two different integral cubes in two ways.
We state the result without proof.
-/

theorem ireland_rosen_exercise_18_4 :
  (∃ a b c d : Int,
    a ^ 3 + b ^ 3 = 1729 ∧ c ^ 3 + d ^ 3 = 1729 ∧ a ≠ b ∧ c ≠ d ∧ ¬(a = c ∧ b = d) ∧ ¬(a = d ∧ b = c)) ∧
  (∀ m : Int, 0 < m → m < 1729 → ¬ (∃ a b c d : Int,
    a ^ 3 + b ^ 3 = m ∧ c ^ 3 + d ^ 3 = m ∧ a ≠ b ∧ c ≠ d ∧ ¬(a = c ∧ b = d) ∧ ¬(a = d ∧ b = c))) := by sorry
