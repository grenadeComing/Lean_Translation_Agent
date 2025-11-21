import Mathlib

open Matrix

/-- Let F be a field, let G be a subgroup of GL_n(F), and define
    H = {A ∈ G : det A = ±1}. This states there exists a subgroup H of GL n F
    whose underlying set is precisely those elements of G with determinant ±1. -/
theorem exists_subgroup_of_det_eq_one_or_neg_one {F : Type*} [Field F] {n : Type*}
  [DecidableEq n] [Fintype n] (G : Subgroup (GL n F)) :
  ∃ (H : Subgroup (GL n F)), ∀ A : GL n F,
    (A ∈ (H : Set (GL n F))) ↔ (A ∈ (G : Set (GL n F)) ∧ (Matrix.det (A.val) = 1 ∨ Matrix.det (A.val) = -1)) := by sorry