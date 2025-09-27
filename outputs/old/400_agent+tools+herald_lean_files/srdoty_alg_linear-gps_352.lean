import Mathlib

/-- If G is a nonempty subset of n×n real matrices closed under multiplication and inverses,
then the identity matrix belongs to G. -/
theorem matrix_group_contains_one {n : Nat} (G : Set (Matrix (Fin n) (Fin n) Real))
  (h_nonempty : ∃ A, A ∈ G)
  (h_mul : ∀ A B, A ∈ G → B ∈ G → A * B ∈ G)
  (h_inv : ∀ A, A ∈ G → ∃ B, B ∈ G ∧ A * B = 1 ∧ B * A = 1) :
  (1 : Matrix (Fin n) (Fin n) Real) ∈ G := by sorry
