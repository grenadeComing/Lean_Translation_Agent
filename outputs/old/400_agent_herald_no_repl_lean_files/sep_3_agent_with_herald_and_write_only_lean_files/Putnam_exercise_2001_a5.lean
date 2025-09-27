import Mathlib

/-- Putnam 2001 A5 translation: There are unique positive integers `a, n` such that
    a^(n+1) - (a+1)^n = 2001. -/
theorem putnam_exercise_2001_a5 : ∃! (a n : ℕ), a > 0 ∧ n > 0 ∧ ((a ^ (n + 1) : Int) - ((a + 1) ^ n : Int) = (2001 : Int)) := by
  sorry
