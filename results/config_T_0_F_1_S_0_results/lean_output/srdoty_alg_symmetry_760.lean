import Mathlib

universe u

open Function

/-- The permutation matrix associated to a permutation of the index set `Fin n`.
    We obtain it by applying the permutation to the columns of the identity matrix:
    entry `(i, j)` is `1` iff `i = α j`, and `0` otherwise. -/
def permutation_matrix {F : Type u} [Field F] {n : Nat} (α : Equiv.Perm (Fin n)) :
  Matrix (Fin n) (Fin n) F :=
  fun i j => if i = α j then 1 else 0

/-- Predicate saying a matrix has exactly one `1` in each row and each column and `0` elsewhere. -/
def is_permutation_matrix {F : Type u} [Field F] {n : Nat} (A : Matrix (Fin n) (Fin n) F) : Prop :=
  (∀ i j, A i j = 0 ∨ A i j = 1) ∧ (∀ i, ∃! j, A i j = 1) ∧ (∀ j, ∃! i, A i j = 1)

/-- The symmetric group `S_n` (permutations of `Fin n`) injects into the `n×n` matrices via
    `α ↦ permutation_matrix α`, and the range of this map is exactly the set of
    permutation matrices (those with a single `1` in each row and column). -/
theorem symmetric_group_isomorphic_to_permutation_matrices {F : Type u} [Field F] (n : Nat) :
  Function.Injective (@permutation_matrix F _ n : Equiv.Perm (Fin n) → Matrix (Fin n) (Fin n) F) ∧
  Set.range (@permutation_matrix F _ n) = {A | @is_permutation_matrix F _ n A} := by sorry
