import Mathlib

/-!
Let G be a group, n : ℕ, and F a field. Any permutation representation
δ : G →* Equiv.Perm (Fin n) gives rise to a matrix representation
ρ : G →* Matrix (Fin n) (Fin n) F by sending g to the permutation matrix
P_{δ(g)} defined by (P_p) i j = if p i = j then 1 else 0.
-/

variable {G : Type*} [Group G]
variable {n : ℕ}
variable {F : Type*} [Field F]

/-- The permutation matrix associated to a permutation of `Fin n`. -/
def perm_matrix (p : Equiv.Perm (Fin n)) : Matrix (Fin n) (Fin n) F :=
  fun i j => if p i = j then 1 else 0

/-- Any permutation representation `δ : G →* Equiv.Perm (Fin n)` induces
    a matrix representation `ρ : G →* Matrix (Fin n) (Fin n) F` by
    `ρ g = perm_matrix (δ g)`. -/
theorem permutation_representation_to_matrix (δ : G →* Equiv.Perm (Fin n)) :
  ∃ ρ : G →* Matrix (Fin n) (Fin n) F, ∀ g, ρ g = perm_matrix (δ g) := by sorry
