import Mathlib

open Matrix

variable {n : Nat}

theorem matrix_group_contains_identity
  (G : Set (Matrix (Fin n) (Fin n) ℝ))
  (hex : ∃ A, A ∈ G)
  (mul_closed : ∀ (A B : Matrix (Fin n) (Fin n) ℝ), A ∈ G → B ∈ G → A * B ∈ G)
  (inv_closed : ∀ (A : Matrix (Fin n) (Fin n) ℝ), A ∈ G → ∃ (B : Matrix (Fin n) (Fin n) ℝ), B ∈ G ∧ A * B = 1) :
  1 ∈ G := by
  sorry
