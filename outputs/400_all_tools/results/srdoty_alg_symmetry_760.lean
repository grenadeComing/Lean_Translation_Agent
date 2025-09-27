import Mathlib

open Matrix

variable {F : Type*} [Field F]
variable {n : Nat}

/-- The permutation matrix associated to a permutation of `Fin n`. -/
def perm_matrix (α : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) F := fun i j => if α j = i then 1 else 0

/-- The symmetric group S_n (as `Equiv.Perm (Fin n)`) is isomorphic to the subgroup of
    permutation matrices in GL_n(F). We give the statement as a multiplicative equivalence
    between `Equiv.Perm (Fin n)` and the units of `Matrix (Fin n) (Fin n) F`. The proof is
    omitted and replaced by `sorry`. -/
def perm_group_isomorphic_to_perm_matrices :
  MulEquiv (Equiv.Perm (Fin n)) (Units (Matrix (Fin n) (Fin n) F)) := by sorry
