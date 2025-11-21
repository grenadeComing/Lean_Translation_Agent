import Mathlib

open Matrix

/-- Define the orthogonal group O(n) as a set of real n×n matrices. -/
def O (n : Nat) : Set (Matrix (Fin n) (Fin n) ℝ) := { A | A * Aᵀ = 1 }

/-- Define the general linear group GL(n) as the set of invertible real n×n matrices. -/
def GL (n : Nat) : Set (Matrix (Fin n) (Fin n) ℝ) := { A | IsUnit (A : Matrix (Fin n) (Fin n) ℝ) }

/-- Prove that O(n) = { A ∈ GL(n) | A Aᵀ = I }. -/
theorem o_eq_set_of_gl_transpose (n : Nat) : O n = { A | A ∈ GL n ∧ A * Aᵀ = 1 } := by sorry