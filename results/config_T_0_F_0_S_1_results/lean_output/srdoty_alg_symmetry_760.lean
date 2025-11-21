import Mathlib

open Matrix Equiv

variable {F : Type _} [Field F]
variable {n : ℕ}

/-- The permutation matrix associated to a permutation of `Fin n`.
    The columns are permuted by `σ`, so `(perm_matrix σ) i j = 1` iff `i = σ j`. -/
def perm_matrix (σ : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) F :=
  Matrix.ofFun fun i j => if i = σ j then (1 : F) else 0

/-- Predicate saying a matrix is a permutation matrix (entries are 0 or 1, with exactly one 1 in
    each row and each column). -/
def is_permutation_matrix (M : Matrix (Fin n) (Fin n) F) : Prop :=
  (∀ i j, M i j = 0 ∨ M i j = (1 : F)) ∧
  (∀ i, ∃! j, M i j = (1 : F)) ∧
  (∀ j, ∃! i, M i j = (1 : F))

/-- The symmetric group `S_n = Equiv.Perm (Fin n)` is isomorphic (as a multiplicative group)
    to the subgroup of `GL_n(F)` consisting of permutation matrices via `σ ↦ perm_matrix σ`.

    We formalize this as a multiplicative equivalence between `Equiv.Perm (Fin n)` and the
    subtype of `Matrix (Fin n) (Fin n) F` consisting of permutation matrices. (Any such matrix
    is invertible over a field, so this subtype identifies with the subgroup of `GL_n(F)` of
    permutation matrices.) -/
theorem symmetric_group_isomorphic_to_permutation_matrices :
  MulEquiv (Equiv.Perm (Fin n)) {M : Matrix (Fin n) (Fin n) F // is_permutation_matrix M} :=
by sorry