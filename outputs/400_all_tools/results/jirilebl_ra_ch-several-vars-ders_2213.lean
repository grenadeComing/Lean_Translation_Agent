import Mathlib
open Matrix Equiv Equiv.Perm Finset

/-- Let K be a field and n a finite type with decidable equality. For an n × n matrix A over K, prove:
1) If det A = 0, then the columns of A are linearly dependent. Concretely, there exists a nonzero vector v : n → K with A.mulVec v = 0.
2) If det A ≠ 0, then the columns of A are linearly independent. Concretely, if A.mulVec v = 0 then v = 0. -/
theorem exists_mulVec_eq_zero_of_det_eq_zero [Field K] [Fintype n] [DecidableEq n]
    {A : Matrix n n K} (h : A.det = 0) : ∃ v : n → K, v ≠ 0 ∧ A.mulVec v = 0 := by sorry

theorem mulVec_eq_zero_imp_eq_zero_of_det_ne_zero [Field K] [Fintype n] [DecidableEq n]
    {A : Matrix n n K} (h : A.det ≠ 0) {v : n → K} (hv : A.mulVec v = 0) : v = 0 := by sorry
