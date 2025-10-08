import Mathlib

open Equiv

variable {F : Type*} [Field F]
variable {n : ℕ}

/-- The permutation matrix associated to a permutation of `Fin n`. -/
def perm_matrix (σ : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) F :=
  fun i j => if σ j = i then 1 else 0

/-- Predicate saying a unit matrix is a permutation matrix (entries are 0 or 1, and exactly one 1 per row and column). -/
def is_perm_unit (M : (Matrix (Fin n) (Fin n) F)ˣ) : Prop :=
  (∀ i j, ((M : Matrix (Fin n) (Fin n) F) i j = 0) ∨ ((M : Matrix (Fin n) (Fin n) F) i j = 1)) ∧
  (∀ i, ∃! j, (M : Matrix (Fin n) (Fin n) F) i j = 1) ∧
  (∀ j, ∃! i, (M : Matrix (Fin n) (Fin n) F) i j = 1)

/-- There is an injective group homomorphism from `Equiv.Perm (Fin n)` into the group of units
    `Matrix (Fin n) (Fin n) F)ˣ`, whose range is exactly the permutation matrices. -/
theorem sn_embeds_as_permutation_matrices :
  ∃ f : (Equiv.Perm (Fin n)) →* ((Matrix (Fin n) (Fin n) F)ˣ),
    Function.Injective (f : Equiv.Perm (Fin n) → (Matrix (Fin n) (Fin n) F)ˣ) ∧
    ∀ M : (Matrix (Fin n) (Fin n) F)ˣ, M ∈ Set.range (f : _) ↔ is_perm_unit M :=
  by sorry
