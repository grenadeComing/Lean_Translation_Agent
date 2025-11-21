import Mathlib

/--
Let G ⊆ Mat_{n×n}(ℝ) be a nonempty set closed under products and inverses
(i.e., a matrix group). Then the identity matrix 1 belongs to G.

We formulate closure under inverses by requiring that every element of G
has a two-sided inverse which is also in G.
-/
lemma matrix_group_contains_identity {n : ℕ} (G : Set (Matrix (Fin n) (Fin n) ℝ))
  (hne : ∃ A, A ∈ G)
  (hmul : ∀ A B, A ∈ G → B ∈ G → A ⬝ B ∈ G)
  (hinv : ∀ A, A ∈ G → ∃ B, B ∈ G ∧ A ⬝ B = 1 ∧ B ⬝ A = 1) :
  (1 : Matrix (Fin n) (Fin n) ℝ) ∈ G := by sorry
