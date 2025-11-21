import Mathlib

open Matrix

variable {n : Type*} [DecidableEq n] [Fintype n]

/-- Elementary matrix obtained from the identity by adding t times row j to row i. -/
def E (i j : n) (t : ℝ) : Matrix n n ℝ := (1 : Matrix n n ℝ) + Matrix.single i j t

/-- For 1 ≤ i ≠ j ≤ n and t ∈ ℝ, the elementary matrix E_{ij}(t) belongs to SL(n). -/
def E_ij_in_SL (i j : n) (t : ℝ) (h : i ≠ j) : Matrix.SpecialLinearGroup n ℝ := by sorry
