import Mathlib

/-- The general linear group GL(n, R) as the subtype of invertible n×n real matrices. -/
def gl (n : Nat) : Type := { A : Matrix (Fin n) (Fin n) Real // Matrix.det A ≠ 0 }

def gl_is_group (n : Nat) : Group (gl n) := by sorry
