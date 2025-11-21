import Mathlib

/-- The general linear group GL(n, ℝ) is the set of invertible n×n real matrices.
    Here expressed as the subtype {A : Matrix (Fin n) (Fin n) ℝ // det A ≠ 0}.
    This subtype carries a group structure under matrix multiplication. -/

def gl_group (n : Nat) : Group (Subtype fun A : Matrix (Fin n) (Fin n) ℝ => det A ≠ 0) := by sorry
