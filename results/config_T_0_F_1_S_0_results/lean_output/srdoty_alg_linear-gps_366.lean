import Mathlib

open Matrix

/-- The orthogonal group O(n) as the set of invertible n×n real matrices A with A * Aᵀ = 1. -/
def O (n : ℕ) : Set (Units (Matrix (Fin n) (Fin n) ℝ)) :=
  { A | (A : Matrix (Fin n) (Fin n) ℝ) * (A : Matrix (Fin n) (Fin n) ℝ)ᵀ = 1 }

theorem O_eq_set (n : ℕ) : O n = { A : Units (Matrix (Fin n) (Fin n) ℝ) | (A : Matrix (Fin n) (Fin n) ℝ) * (A : Matrix (Fin n) (Fin n) ℝ)ᵀ = 1 } := by sorry
