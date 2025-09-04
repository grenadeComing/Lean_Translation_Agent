import Mathlib

open Matrix

/-- The orthogonal group O(n) as a subtype of n-by-n real matrices. -/
def O (n : Nat) := {A : Matrix (Fin n) (Fin n) ℝ // A * Aᵀ = 1}

/-- O(n) is a group under matrix multiplication. -/
instance O_group (n : Nat) : Group (O n) := by
  -- Using (AB)^{-1} = B^{-1} A^{-1} and (AB)ᵀ = Bᵀ Aᵀ one shows closure, identity, inverses,
  -- and associativity is inherited from matrix multiplication. The inverse of A is Aᵀ.
  sorry
