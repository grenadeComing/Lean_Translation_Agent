import Mathlib

open Matrix Equiv

variable {G : Type*} [Group G]
variable {n : ℕ} {F : Type*} [Field F] [DecidableEq (Fin n)] [Fintype (Fin n)]

/-- The permutation matrix associated to a permutation σ of Fin n over the field F. -/
def perm_matrix (σ : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) F :=
  fun i j => if j = σ i then 1 else 0

/-- Any permutation representation δ : G → S_n gives rise to a matrix representation ρ : G → GL_n(F)
by sending g to the permutation matrix P_{δ(g)}. -/
theorem permutation_representation_to_GL (δ : G → Equiv.Perm (Fin n)) :
  ∃ ρ : G → GL (Fin n) F, ∀ g : G, (ρ g : Matrix (Fin n) (Fin n) F) = perm_matrix (δ g) := by sorry
