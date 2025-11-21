import Mathlib

/-- Let A ∈ O(n) with columns A_1,...,A_n. Deduce that {A_1,...,A_n} is an orthonormal basis of ℝ^n. -/
theorem orthogonal_matrix_columns_are_orthonormal {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ)
  (hA : Matrix.transpose A * A = 1) :
  Orthonormal ℝ (fun i => (EuclideanSpace.toFun (EuclideanSpace ℝ (Fin n)) (A.col i))) := by sorry