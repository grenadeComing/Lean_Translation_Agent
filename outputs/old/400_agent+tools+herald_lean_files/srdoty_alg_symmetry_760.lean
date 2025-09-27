import Mathlib

variable {F : Type*} [Field F] {n : Nat}

open Equiv

/-- The permutation matrix associated to a permutation of the columns of the identity. -/
def perm_matrix (σ : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) F :=
  fun i j => if σ j = i then 1 else 0

/-- Predicate saying a matrix is a permutation matrix (exactly one 1 in each row and column, zeros elsewhere). -/
def is_perm_matrix (A : Matrix (Fin n) (Fin n) F) : Prop :=
  (∀ i j, A i j = 0 ∨ A i j = 1) ∧ (∀ i, ∃! j, A i j = 1) ∧ (∀ j, ∃! i, A i j = 1)

/-- The symmetric group Perm (Fin n) is in bijection with the set of permutation matrices via σ ↦ perm_matrix σ. -/
def perm_group_equiv :
  (Equiv.Perm (Fin n)) ≃ { A : Matrix (Fin n) (Fin n) F // is_perm_matrix A } :=
  by sorry
