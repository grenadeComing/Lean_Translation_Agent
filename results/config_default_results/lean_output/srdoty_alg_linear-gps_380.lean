import Mathlib

/-- Let A ∈ O(n) with columns A1,...,An. Deduce that {A1,...,An} is an orthonormal basis of ℝ^n. -/
theorem orthonormal_cols_of_orthogonal_matrix {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ)
  (hA : A ∈ Matrix.orthogonalGroup (Fin n) ℝ) :
  Orthonormal ℝ fun i : Fin n => A.col i := by
  -- translation of the mathematical statement; proof omitted
  sorry

