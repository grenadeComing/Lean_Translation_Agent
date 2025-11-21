import Mathlib
open Matrix

/-- The special linear group SL(n): n×n real matrices of determinant 1. -/
def SL (n : ℕ) := {A : Matrix (Fin n) (Fin n) ℝ // det A = 1}

/-- SL(n) is a group under matrix multiplication. -/
def SL_is_group (n : ℕ) : Group (SL n) := by sorry
