import Mathlib

open Matrix

/-- Special orthogonal group SO(n) as the set of real n×n matrices that are orthogonal with determinant 1. -/
def SO (n : ℕ) : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | A.transpose * A = 1 ∧ Matrix.det A = 1 }

/-- SO(n) is a matrix group. -/
theorem isMatrixGroup_SO (n : ℕ) : IsMatrixGroup (SO n) := by sorry
