import Mathlib

variable {F : Type*} [Field F] {n : ℕ}

/-- The permutation matrix associated to a permutation σ of Fin n: the matrix P with
    P i j = 1 if and only if i = σ j, and P i j = 0 otherwise. -/
def perm_matrix (σ : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) F :=
  fun i j => if i = σ j then (1 : F) else 0

/-- Predicate expressing that a matrix has exactly one entry 1 in each row and column
    and all other entries 0. -/
def is_permutation_matrix (M : Matrix (Fin n) (Fin n) F) : Prop :=
  (∀ i j, M i j = 0 ∨ M i j = 1) ∧ (∀ i, ∃! j, M i j = 1) ∧ (∀ j, ∃! i, M i j = 1)

/-- The symmetric group S_n (as Equiv.Perm (Fin n)) is isomorphic (as a multiplicative group)
    to the subgroup of permutation matrices in GL_n(F). We state this by asserting the
    existence of a subgroup H of the units of the matrix algebra and a multiplicative
    equivalence between Equiv.Perm (Fin n) and H, such that H is exactly the subgroup
    of units whose underlying matrix is a permutation matrix. -/
theorem s_n_isomorphic_to_perm_matrices :
  ∃ (H : Subgroup (Units (Matrix (Fin n) (Fin n) F)))
    (e : MulEquiv (Equiv.Perm (Fin n)) H),
    ∀ u : Units (Matrix (Fin n) (Fin n) F),
      u ∈ H ↔ is_permutation_matrix (u.val) :=
by sorry
