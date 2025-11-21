import Mathlib

open Matrix

variable {n : ℕ}

/-- The special orthogonal group SO(n) as a set of n × n real matrices. -/
def special_orthogonal_group (n : ℕ) : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | A.transpose ⬝ A = 1 ∧ A.det = 1 }

/-- SO(n) contains the identity matrix. -/
theorem special_orthogonal_group_contains_one :
  (1 : Matrix (Fin n) (Fin n) ℝ) ∈ special_orthogonal_group n := by sorry

/-- SO(n) is closed under matrix multiplication. -/
theorem special_orthogonal_group_mul_closed {A B : Matrix (Fin n) (Fin n) ℝ} (hA : A ∈ special_orthogonal_group n) (hB : B ∈ special_orthogonal_group n) :
  (A ⬝ B) ∈ special_orthogonal_group n := by sorry

/-- SO(n) is closed under transpose (which is the inverse for orthogonal matrices). -/
theorem special_orthogonal_group_transpose_closed {A : Matrix (Fin n) (Fin n) ℝ} (hA : A ∈ special_orthogonal_group n) :
  A.transpose ∈ special_orthogonal_group n := by sorry
