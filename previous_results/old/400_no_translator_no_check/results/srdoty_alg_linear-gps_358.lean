import Mathlib

open Matrix

/-- The orthogonal set O(n) as n×n real matrices A with A * Aᵀ = 1. -/
def O (n : Nat) : Set (Matrix (Fin n) (Fin n) ℝ) := { A | A * Aᵀ = 1 }

/-- O(n) is a group under matrix multiplication: identity is in O(n), O(n) is closed under
    multiplication, and the transpose gives inverses. -/
theorem O_is_group (n : Nat) :
  (1 : Matrix (Fin n) (Fin n) ℝ) ∈ O n ∧
  (∀ A B, A ∈ O n → B ∈ O n → A * B ∈ O n) ∧
  (∀ A, A ∈ O n → Aᵀ ∈ O n) := by sorry
