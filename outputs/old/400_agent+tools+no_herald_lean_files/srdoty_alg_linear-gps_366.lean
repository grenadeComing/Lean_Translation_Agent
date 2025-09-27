import Mathlib

open Matrix

/-- General linear group of invertible n×n real matrices, as a subtype of matrices. -/
def MyGL (n : Type _) [Fintype n] [DecidableEq n] : Type _ := { A : Matrix n n ℝ // IsUnit A }

/-- Orthogonal group: those invertible matrices whose matrix times its transpose is the identity. -/
def MyO (n : Type _) [Fintype n] [DecidableEq n] : Set (MyGL n) := { A : MyGL n | (A.1 : Matrix n n ℝ) * (A.1 : Matrix n n ℝ)ᵀ = 1 }

/-- Statement: MyO(n) equals the set of elements of MyGL(n) satisfying A Aᵀ = I. -/
theorem MyO_eq {n : Type _} [Fintype n] [DecidableEq n] :
  MyO n = { A : MyGL n | (A.1 : Matrix n n ℝ) * (A.1 : Matrix n n ℝ)ᵀ = 1 } := by sorry
