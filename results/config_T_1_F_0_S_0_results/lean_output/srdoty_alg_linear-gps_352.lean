import Mathlib

/-- Let G ⊆ Mat_{n×n}(ℝ) be a nonempty set closed under products and inverses (i.e., a matrix group).
We state the lemma (no proof) that the identity matrix 1 belongs to G. -/
theorem one_mem_of_matrix_group {n : ℕ} {G : Set (Matrix (Fin n) (Fin n) ℝ)}
  (h_nonempty : G.Nonempty)
  (h_closed_under_mul : ∀ {X Y : Matrix (Fin n) (Fin n) ℝ}, X ∈ G → Y ∈ G → X * Y ∈ G)
  (h_inv_exists : ∀ A (hA : A ∈ G), ∃ B, B ∈ G ∧ A * B = 1 ∧ B * A = 1) :
  (1 : Matrix (Fin n) (Fin n) ℝ) ∈ G := by sorry