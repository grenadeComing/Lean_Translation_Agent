import Mathlib

open Matrix

variable {F : Type _} [Field F]
variable {n : Nat}

/-- The permutation matrix associated to a permutation σ on `Fin n`.
    We place a `1` at position (i, j) iff i = σ j. This corresponds to
    applying σ to the columns of the identity matrix. -/
def perm_matrix (σ : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) F :=
  fun i j => if i = σ j then 1 else 0

/-- Predicate saying a matrix is a permutation matrix: every entry is 0 or 1,
    and each row and each column contains exactly one `1`. -/
def is_perm_matrix (M : Matrix (Fin n) (Fin n) F) : Prop :=
  (∀ i j, M i j = 0 ∨ M i j = 1) ∧ (∀ i, ∃! j, M i j = 1) ∧ (∀ j, ∃! i, M i j = 1)

/-- The symmetric group S_n is isomorphic to the subgroup of permutation
    matrices in GL_n(F) (viewed as units of the matrix ring). We state the
    existence of an `Equiv` between `Equiv.Perm (Fin n)` and the subtype of
    `Units (Matrix (Fin n) (Fin n) F)` consisting of permutation matrices,
    and assert that this correspondence is multiplicative on the nose. -/
theorem S_n_iso_perm_matrices :
  ∃ (e : Equiv (Equiv.Perm (Fin n)) ({ u : Units (Matrix (Fin n) (Fin n) F) // is_perm_matrix u.val })),
    ∀ (σ τ : Equiv.Perm (Fin n)), (e (σ * τ)).1 = (e σ).1 * (e τ).1 := by sorry
