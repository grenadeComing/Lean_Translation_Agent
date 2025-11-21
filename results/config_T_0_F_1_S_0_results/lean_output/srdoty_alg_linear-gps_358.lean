import Mathlib

open Matrix

/-- The orthogonal group O(n): matrices A ∈ Mat_{n×n}(ℝ) with A * Aᵀ = I. -/
def O (n : ℕ) : Type := { A : Matrix (Fin n) (Fin n) ℝ // A * Aᵀ = 1 }

/-- O(n) is a group under matrix multiplication. -/
def O_is_group (n : ℕ) : Group (O n) := by
  -- Using (AB)^{-1} = B^{-1}A^{-1} and (AB)ᵀ = BᵀAᵀ one shows closure, associativity (inherited),
  -- identity, and inverses (A^{-1} = Aᵀ), hence a group.
  sorry
