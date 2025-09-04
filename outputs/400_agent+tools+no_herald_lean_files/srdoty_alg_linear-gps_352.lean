import Mathlib

open Set Matrix

variable {n : Type _} [Fintype n] [DecidableEq n]
variable {R : Type _} [Semiring R]

/-- Let G be a nonempty set of n×n matrices over R closed under products and (two-sided) inverses.
    Then the identity matrix 1 belongs to G. -/
theorem matrix_group_has_one (G : Set (Matrix n n R))
  (h_nonempty : G.Nonempty)
  (h_mul_closed : ∀ A B, A ∈ G → B ∈ G → A * B ∈ G)
  (h_inv_closed : ∀ A, A ∈ G → ∃ B, B ∈ G ∧ A * B = 1 ∧ B * A = 1) :
  (1 : Matrix n n R) ∈ G := by sorry
