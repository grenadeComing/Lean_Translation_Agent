import Mathlib

open Equiv Matrix

/-!
Let F be a field and n a natural number. For a permutation σ : Perm (Fin n),
we define the corresponding permutation matrix P_σ by permuting the columns
of the identity matrix: the (i, j)-entry is 1 iff i = σ j, and 0 otherwise.
The symmetric group S_n (represented as `Equiv.Perm (Fin n)`) is isomorphic to
the subgroup of permutation matrices in GL_n(F) via σ ↦ P_σ.
-/

variable {F : Type*} [Field F]
variable {n : Nat}

/-- The permutation matrix associated to a permutation `σ : Perm (Fin n)`. -/
def perm_matrix (σ : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) F :=
  fun i j => if i = σ j then 1 else 0

/-- The symmetric group S_n is isomorphic to the subgroup of permutation matrices
in GL_n(F). Formulated here as the existence of a subgroup `H` of the units of
`Matrix (Fin n) (Fin n) F` (which is `GL_n(F)`) and a group isomorphism
`Equiv.Perm (Fin n) ≃* H` implemented by `σ ↦ perm_matrix σ`.  -/
theorem sn_isomorphic_to_perm_matrix_subgroup :
  ∃ H : Subgroup (Units (Matrix (Fin n) (Fin n) F)), (Equiv.Perm (Fin n)) ≃* H :=
by sorry
