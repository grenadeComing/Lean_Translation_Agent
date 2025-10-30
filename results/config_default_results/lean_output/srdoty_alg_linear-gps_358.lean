import Mathlib
open Matrix

/-- The orthogonal group O(n) over R is the set of A ∈ Matrix (Fin n) (Fin n) R with AᵀA = I. -/

def O (n : ℕ) (R : Type*) [Field R] : Type _ :=
  { A : Matrix (Fin n) (Fin n) R // A ⬝ Aᵀ = (1 : Matrix (Fin n) (Fin n) R) }

/-- Prove that O(n) is a group under matrix multiplication. -/
theorem orthogonal_group_isGroup (n : ℕ) (R : Type*) [Field R] : IsGroup (O n R) := by
  sorry
