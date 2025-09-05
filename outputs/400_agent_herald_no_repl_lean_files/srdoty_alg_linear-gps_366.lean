import Mathlib

open Matrix

/-- General linear group as a set of invertible n × n real matrices (defined here via nonzero determinant). -/
def GL (n : ℕ) : Set (Matrix (Fin n) (Fin n) ℝ) := { A | A.det ≠ 0 }

/-- Orthogonal group O(n) as the set of matrices A with A Aᵀ = I and invertible. -/
def O (n : ℕ) : Set (Matrix (Fin n) (Fin n) ℝ) := { A | A ∈ GL n ∧ A ⬝ A.transpose = 1 }

/-- The statement: O(n) = { A ∈ GL(n) | A Aᵀ = I }. -/
theorem O_eq_set (n : ℕ) :
  O n = { A : Matrix (Fin n) (Fin n) ℝ | A ∈ GL n ∧ A ⬝ A.transpose = 1 } := by sorry
