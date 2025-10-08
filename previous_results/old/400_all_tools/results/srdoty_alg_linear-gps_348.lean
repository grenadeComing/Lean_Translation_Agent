import Mathlib

/-- The general linear group GL(n, ℝ) as the subtype of n×n real matrices with nonzero determinant. -/
def GLn (n : Nat) : Type := { A : Matrix (Fin n) (Fin n) Real // Matrix.det A ≠ 0 }

/-- GL(n, ℝ) is a group under matrix multiplication. Proof omitted. -/
instance (n : Nat) : Group (GLn n) := by
  -- multiplication, identity and inverses are inherited from matrix multiplication and the existence
  -- of an inverse matrix when the determinant is nonzero. Proof omitted.
  sorry
