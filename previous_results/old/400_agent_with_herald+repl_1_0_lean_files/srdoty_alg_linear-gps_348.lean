import Mathlib

/-- The general linear group GL(n, ℝ) as the group of units of n × n real matrices. -/
def GL (n : ℕ) : Type := (Matrix (Fin n) (Fin n) ℝ)ˣ

/-- GL(n, ℝ) is a group under matrix multiplication. -/
instance GL_group (n : ℕ) : Group (GL n) := by
  -- proof omitted
  sorry
