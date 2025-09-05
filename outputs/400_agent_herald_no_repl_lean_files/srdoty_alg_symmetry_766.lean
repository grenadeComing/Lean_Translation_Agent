import Mathlib

open Matrix

/-- The permutation matrix associated to a permutation of Fin n over a field F.
    Entry (i,j) is 1 if σ i = j and 0 otherwise. -/
def permutation_matrix {n : ℕ} {F : Type*} [Field F] (σ : Equiv.Perm (Fin n)) :
    Matrix (Fin n) (Fin n) F := fun i j => if σ i = j then 1 else 0

/-- Given a permutation representation δ : G →* Equiv.Perm (Fin n), the assignment
    g ↦ permutation_matrix (δ g) determines a group homomorphism G →* GeneralLinearGroup (Fin n) F.
    (Statement only; proof omitted.) -/
theorem permutation_representation_to_GL {G : Type*} [Group G] {n : ℕ} {F : Type*} [Field F]
    (δ : G →* Equiv.Perm (Fin n)) :
  ∃ ρ : G →* GeneralLinearGroup (Fin n) F, ∀ g, (ρ g : Matrix (Fin n) (Fin n) F) = permutation_matrix (δ g) := by
  sorry
