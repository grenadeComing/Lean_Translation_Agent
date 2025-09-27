import Mathlib

theorem Ireland_Rosen_exercise_18_4 :
  (∃ a b c d : ℕ,
    a ^ 3 + b ^ 3 = 1729 ∧ c ^ 3 + d ^ 3 = 1729 ∧ a ≠ b ∧ c ≠ d ∧ ((a, b) ≠ (c, d) ∧ (a, b) ≠ (d, c))) ∧
  ∀ n : ℕ, (∃ a b c d : ℕ,
    a ^ 3 + b ^ 3 = n ∧ c ^ 3 + d ^ 3 = n ∧ a ≠ b ∧ c ≠ d ∧ ((a, b) ≠ (c, d) ∧ (a, b) ≠ (d, c))) →
    n ≥ 1729 := by sorry
