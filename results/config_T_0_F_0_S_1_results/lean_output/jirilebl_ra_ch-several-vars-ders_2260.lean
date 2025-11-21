import Mathlib

/-!
Suppose `A` is an `n`-by-`n` matrix and `B` its matrix of cofactors. Show that the product
`A S Aᵀ` is a diagonal matrix, where `S` is the matrix with `S_{i,j} = (-1)^{i+j}`.
If `A` is invertible then show that `(Aᵀ)^{-1} = (1 / det A) • B`.

The statements below record these two facts (no proofs are given here).
-/

open Matrix

variable {R : Type _}

/- We use `Fin n` as the index type for `n × n` matrices. -/
variable {n : Nat}

/-- The sign matrix S with entries S_{i,j} = (-1)^{i+j}. -/
def S (R : Type _) [Semiring R] (n : Nat) : Matrix (Fin n) (Fin n) R :=
  fun i j => ((-1 : R) ^ (i.val + j.val))

/-- Let `A` be an `n × n` matrix over a commutative ring. -/
variable (A : Matrix (Fin n) (Fin n) R)

/-- Placeholder name for the matrix of cofactors of `A` (the user statement uses `B`).
    In a full development one would define this by minors: B_{i,j} = (-1)^{i+j} det (A with
    row i and column j removed). Here we simply introduce `B` as that matrix. -/
variable (B : Matrix (Fin n) (Fin n) R)

/-- The product A S Aᵀ is a diagonal matrix. -/
theorem asa_transpose_is_diagonal [CommRing R] :
  -- `IsDiagonal` denotes the property of being diagonal.
  IsDiagonal (A * S R n * Aᵀ) := by sorry

/-- If `A` is invertible (over a field), then the inverse of `Aᵀ` equals
    (1 / det A) times the cofactor matrix `B`.
    (One usually takes `B` to be the transpose of the adjugate; here `B` is the cofactor matrix
    as in the exercise statement.) -/
theorem transpose_inv_eq_one_div_det_mul_cofactor [Field R] (hdet : det A ≠ 0) :
  (Aᵀ)⁻¹ = (1 / det A) • B := by sorry
