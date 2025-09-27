import Mathlib

/-- The permutation matrix associated to a permutation of `Fin n`. -/
def permutation_matrix {n : ℕ} {F : Type*} [Field F] (σ : Equiv.Perm (Fin n)) :
  Matrix (Fin n) (Fin n) F :=
  fun i j => if j = σ i then (1 : F) else 0

/-- Let G be a group, n ∈ ℕ, and F a field. Any permutation representation
    `δ : G → S_n` gives rise to a matrix representation `ρ : G → GL_n(F)` by
    sending `g` to the permutation matrix `permutation_matrix (δ g)`. -/
theorem permutation_representation_to_matrix_representation {G : Type*} [Group G]
  (n : ℕ) (F : Type*) [Field F] (δ : G → Equiv.Perm (Fin n)) :
  ∃ ρ : G → (Matrix (Fin n) (Fin n) F)ˣ, ∀ g, (ρ g : Matrix (Fin n) (Fin n) F) = permutation_matrix (δ g) := by
  sorry
