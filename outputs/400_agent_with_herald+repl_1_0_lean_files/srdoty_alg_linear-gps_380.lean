import Mathlib

open Matrix
open Finset

variable {n : Nat}

/-- Dot product on R^n (indexed by Fin n). -/
def dot (u v : Fin n → ℝ) : ℝ := ∑ k : Fin n, u k * v k

/-- A is orthogonal as a matrix if Aᵀ * A = I. -/
def is_orthogonal_matrix (A : Matrix (Fin n) (Fin n) ℝ) : Prop := A.transpose ⬝ A = 1

/-- The columns of A are orthonormal if their dot products are the Kronecker delta. -/
def cols_are_orthonormal (A : Matrix (Fin n) (Fin n) ℝ) : Prop :=
  ∀ i j : Fin n, dot (A.col i) (A.col j) = if i = j then 1 else 0

/-- If A is orthogonal then its columns are orthonormal. -/
theorem matrix_cols_orthonormal_of_is_orthogonal (A : Matrix (Fin n) (Fin n) ℝ)
  (h : is_orthogonal_matrix A) : cols_are_orthonormal A := by
  -- proof omitted
  sorry
