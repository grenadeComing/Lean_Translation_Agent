import Mathlib

/-- Let G ⊆ Mat_{n×n}(Real) be a nonempty set closed under products and inverses (i.e., a matrix group). -/
theorem matrix_group_nonempty_contains_identity {n : ℕ} {G : Set (Matrix (Fin n) (Fin n) Real)}
  (hclosed : ∀ A B, A ∈ G → B ∈ G → A * B ∈ G)
  (hinv : ∀ A, A ∈ G → Exists fun b => b ∈ G ∧ A * b = 1 ∧ b * A = 1)
  (hne : Exists fun x => x ∈ G) : (1 : Matrix (Fin n) (Fin n) Real) ∈ G := by sorry
