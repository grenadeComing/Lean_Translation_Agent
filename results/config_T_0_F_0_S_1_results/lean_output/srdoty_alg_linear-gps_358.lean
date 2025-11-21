import Mathlib

/-- The orthogonal group O(n) as a set of real n×n matrices. -/
def O (n : ℕ) : Set (Matrix (Fin n) (Fin n) ℝ) := { A | A * A.transpose = 1 }

/-- O(n) is a group under matrix multiplication. -/
theorem O_is_group (n : ℕ) : Group (Subtype fun A : Matrix (Fin n) (Fin n) ℝ => A * A.transpose = 1) := by sorry