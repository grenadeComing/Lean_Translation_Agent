import Mathlib

variable {F : Type _} [Field F] {n : Nat}

/-- The permutation matrix associated to a permutation of Fin n: it has a 1 in position (i,j)
    iff the permutation sends j to i, and 0 otherwise. -/
def perm_matrix (σ : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) F :=
  fun i j => if σ j = i then (1 : F) else (0 : F)

/-- The set of permutation matrices (as a subset of all n × n matrices over F). -/
def permutation_matrices : Set (Matrix (Fin n) (Fin n) F) :=
  {A | ∃ σ : Equiv.Perm (Fin n), A = perm_matrix σ}

/-- The symmetric group S_n (Equiv.Perm (Fin n)) is in bijection with
    the subtype of permutation matrices in Mat_{n×n}(F).
    (Statement only; proof omitted.) -/
noncomputable def sym_group_perm_matrices_equiv :
  Equiv (Equiv.Perm (Fin n)) ({A : Matrix (Fin n) (Fin n) F // A ∈ permutation_matrices}) :=
  by sorry
