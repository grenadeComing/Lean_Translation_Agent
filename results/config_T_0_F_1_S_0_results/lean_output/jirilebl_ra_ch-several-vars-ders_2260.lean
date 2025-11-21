import Mathlib

open Matrix

variable {R : Type _} [CommRing R]
variable {n : ℕ} [Fintype (Fin n)] [DecidableEq (Fin n)]

/-- The sign matrix S with S_{i,j} = (-1)^{i+j}. -/
def S : Matrix (Fin n) (Fin n) R := fun i j => (-1 : R) ^ (i.val + j.val)

/-- The matrix of cofactors of A (classically: the matrix whose (i,j)-entry is
    (-1)^{i+j} det A_{i,j}). This is the transpose of the adjugate in Mathlib. -/
def cofactor_matrix (A : Matrix (Fin n) (Fin n) R) : Matrix (Fin n) (Fin n) R :=
  A.adjugate.transpose

/-- For any n-by-n matrix A, the matrix A * S * Aᵀ is diagonal: all off-diagonal
    entries vanish. -/
theorem A_S_Atrans_is_diagonal (A : Matrix (Fin n) (Fin n) R) :
  ∀ (i j : Fin n), i ≠ j → (((A * S * A.transpose) : Matrix (Fin n) (Fin n) R) i j) = 0 := by sorry

/-- If A is invertible (equivalently det A is a unit), then the inverse of Aᵀ is
    (1 / det A) times the cofactor matrix of A. -/
theorem inverse_of_transpose_by_cofactor (A : Matrix (Fin n) (Fin n) R)
  (h : IsUnit (A.det : R)) :
  (A.transpose)⁻¹ = Units.val ((h.unit)⁻¹) • (cofactor_matrix A) := by sorry
