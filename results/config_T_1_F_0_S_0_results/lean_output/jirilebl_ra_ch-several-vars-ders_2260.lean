import Mathlib

open Matrix

variable {R : Type*} [Field R]
variable {n : Nat}

/-- The sign matrix S with S_{i,j} = (-1)^{i+j} -/
noncomputable def S (n : Nat) : Matrix (Fin n) (Fin n) R := fun i j => (-1 : R) ^ (i.val + j.val)

/-- Suppose A is an n-by-n matrix and B its matrix of cofactors. Show that the product A S A^T is a diagonal matrix. -/
theorem A_mul_S_mul_A_transpose_diagonal (A : Matrix (Fin n) (Fin n) R) :
  ∀ i j : Fin n, i ≠ j → (A * S n * Aᵀ) i j = 0 := by sorry

/-- The cofactor matrix of A (the transpose of the adjugate). -/
noncomputable def cofactor_matrix (A : Matrix (Fin n) (Fin n) R) : Matrix (Fin n) (Fin n) R := (Matrix.adjugate A)ᵀ

/-- If A is invertible then (A^T)^{-1} = (1 / det A) * B, where B is the matrix of cofactors of A. -/
theorem transpose_inverse_eq_inv_det_mul_cofactor (A : Matrix (Fin n) (Fin n) R) (h : det A ≠ 0) :
  (Aᵀ)⁻¹ = (1 / det A) • cofactor_matrix A := by sorry