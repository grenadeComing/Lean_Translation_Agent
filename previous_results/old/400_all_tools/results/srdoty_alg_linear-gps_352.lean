import Mathlib

variable {n : Type} [Fintype n] [DecidableEq n]

/-- Let G ⊆ Mat_{n×n}(ℝ) be a nonempty set closed under products and inverses (i.e., a matrix group).
    We assume explicitly that for every A ∈ G there exists B ∈ G with A * B = idMat and B * A = idMat.
    Then the identity matrix idMat belongs to G. -/

def idMat : Matrix n n ℝ := fun i j => if i = j then (1 : ℝ) else 0

theorem identity_mem_of_nonempty_closed_under_products_and_inverses
  {G : Set (Matrix n n ℝ)}
  (h_nonempty : G.Nonempty)
  (h_mul : ∀ (A B : Matrix n n ℝ), A ∈ G → B ∈ G → A * B ∈ G)
  (h_inv : ∀ (A : Matrix n n ℝ), A ∈ G → ∃ (B : Matrix n n ℝ), B ∈ G ∧ A * B = idMat ∧ B * A = idMat) :
  idMat ∈ G := by
  rcases h_nonempty with ⟨A, hA⟩
  rcases h_inv A hA with ⟨B, hB, hAB, hBA⟩
  have hprod := h_mul A B hA hB
  rw [hAB] at hprod
  exact hprod
