import Mathlib

open Matrix

variable {n : Nat}
variable (A : Matrix (Fin n) (Fin n) ℝ)

/-- If A is orthogonal (Aᵀ * A = I), then the dot product of the i-th and j-th columns equals
    the Kronecker delta: 1 if i = j and 0 otherwise. -/
theorem columns_dot_eq_delta (hA : A.transpose * A = (1 : Matrix (Fin n) (Fin n) ℝ)) :
  ∀ i j : Fin n, dotProduct (A.col i) (A.col j) = if i = j then 1 else 0 := by sorry

/-- If A is orthogonal, then the (i,j)-entry of Aᵀ * A equals the Kronecker delta. -/
theorem columns_transpose_mul_eq_delta (hA : A.transpose * A = (1 : Matrix (Fin n) (Fin n) ℝ)) :
  ∀ i j : Fin n, (A.transpose * A) i j = if i = j then 1 else 0 := by sorry

/-- If A is orthogonal, then its columns are linearly independent and span ℝ^n. -/
theorem columns_form_basis (hA : A.transpose * A = (1 : Matrix (Fin n) (Fin n) ℝ)) :
  LinearIndependent ℝ (fun i => A.col i) ∧ Submodule.span ℝ (Set.range fun i => A.col i) = ⊤ := by sorry
