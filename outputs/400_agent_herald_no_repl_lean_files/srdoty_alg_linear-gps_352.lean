import Mathlib

variable {n : Type _} [Fintype n] [DecidableEq n]

theorem matrix_group_contains_one (G : Set (Matrix n n ℝ))
  (h_nonempty : ∃ A : Matrix n n ℝ, A ∈ G)
  (h_mul : ∀ A B : Matrix n n ℝ, A ∈ G → B ∈ G → A * B ∈ G)
  (h_inv : ∀ A : Matrix n n ℝ, A ∈ G → ∃ B : Matrix n n ℝ, B ∈ G ∧ A * B = 1 ∧ B * A = 1) :
  (1 : Matrix n n ℝ) ∈ G := by sorry
