import Mathlib

variable {F : Type*} [Field F]
variable {n : ℕ}

open Matrix

/-- The permutation matrix associated to a permutation of fin n. -/
def perm_matrix (σ : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) F :=
  fun i j => if j = σ i then 1 else 0

/-- The symmetric group S_n is (multiplicatively) isomorphic to the subgroup of GL_n(F)
    consisting of permutation matrices, via σ ↦ P_σ. -/
theorem symmetric_group_isomorphic_to_permutation_matrices :
  MulEquiv (Equiv.Perm (Fin n))
    {M : (Matrix (Fin n) (Fin n) F)ˣ // ∃ σ : Equiv.Perm (Fin n), (M : Matrix (Fin n) (Fin n) F) = perm_matrix σ} := by sorry