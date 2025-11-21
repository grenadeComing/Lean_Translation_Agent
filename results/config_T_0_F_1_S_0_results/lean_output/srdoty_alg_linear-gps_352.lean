import Mathlib

open Set

variable {n : Nat}

theorem matrix_group_contains_one (G : Set (Matrix (Fin n) (Fin n) ℝ))
  (hnon : ∃ A, A ∈ G)
  (hmul : ∀ A B, A ∈ G → B ∈ G → A * B ∈ G)
  (hinv : ∀ A, A ∈ G → ∃ B, B ∈ G ∧ A * B = 1 ∧ B * A = 1) :
  (1 : Matrix (Fin n) (Fin n) ℝ) ∈ G := by sorry
