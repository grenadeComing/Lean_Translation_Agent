import Mathlib

/-- Putnam 2001 A5: There are unique positive integers a, n such that a^(n+1) - (a+1)^n = 2001. -/
theorem putnam_exercise_2001_a5 :
  ∃! (p : ℕ × ℕ), 0 < p.1 ∧ 0 < p.2 ∧ p.1^(p.2+1) - (p.1+1)^(p.2) = 2001 := by sorry
