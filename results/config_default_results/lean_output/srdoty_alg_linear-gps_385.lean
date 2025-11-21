import Mathlib

open Matrix

/-- Orthogonal group O(n): matrices A with Aᵀ * A = I -/
def O (n : Nat) : Set (Matrix (Fin n) (Fin n) Real) := {A | Matrix.transpose A * A = 1}

/-- Special orthogonal group SO(n): orthogonal matrices with determinant 1 -/
def SO (n : Nat) : Set (Matrix (Fin n) (Fin n) Real) := {A | Matrix.transpose A * A = 1 ∧ A.det = 1}

/-- The subtype of matrices satisfying the SO(n) conditions is a group (matrix group). -/
instance SO_group (n : Nat) : Group ({A : Matrix (Fin n) (Fin n) Real // Matrix.transpose A * A = 1 ∧ A.det = 1}) := by sorry
