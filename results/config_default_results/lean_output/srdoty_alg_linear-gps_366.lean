import Mathlib
open Matrix

universe u

/-- The orthogonal group O(n, R) is the subgroup of GL n R consisting of matrices A with A * Aᵀ = 1. -/
def O (n : Type u) (R : Type*) [Fintype n] [DecidableEq n] [CommRing R] :=
  { A : GL n R // (A : Matrix n n R) * (A : Matrix n n R)ᵀ = (1 : Matrix n n R) }

theorem o_eq_set_self_mul_transpose_inv_extracted
  [Fintype n] [DecidableEq n] [CommRing R] :
  O n R = { A : GL n R // (A : Matrix n n R) * (A : Matrix n n R)ᵀ = (1 : Matrix n n R) } := by
  rfl
