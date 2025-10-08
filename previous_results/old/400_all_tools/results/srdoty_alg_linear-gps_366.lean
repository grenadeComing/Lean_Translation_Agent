import Mathlib

/-- General linear group as a set: invertible n×n matrices over a field R. -/
def GL_set (R : Type _) [Field R] (n : Nat) : Set (Matrix (Fin n) (Fin n) R) := { A | IsUnit (Matrix.det A) }

/-- Orthogonal group as a set: matrices in GL with A * A.transpose = 1. -/
def O_set (R : Type _) [Field R] (n : Nat) : Set (Matrix (Fin n) (Fin n) R) := { A | IsUnit (Matrix.det A) ∧ A * Matrix.transpose A = 1 }

/-- The usual description: O(n,R) = { A ∈ GL(n,R) | A * Aᵀ = 1 }. -/
theorem O_set_eq_GL_set (R : Type _) [Field R] (n : Nat) : O_set R n = { A ∈ GL_set R n | A * Matrix.transpose A = 1 } := by sorry
