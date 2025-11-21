import Mathlib

/-- The alternating group A_n as the kernel of the sign homomorphism on permutations of Fin n. -/
def A_alt (n : ℕ) : Subgroup (Equiv.Perm (Fin n)) :=
  ((Equiv.Perm.sign : Equiv.Perm (Fin n) →* ℤˣ).ker)

/-- Let n ≥ 6 and let N be a proper normal subgroup of A_n. Show that N contains every subgroup
    G_i = {σ ∈ A_n : σ i = i} for each i : Fin n. -/
theorem srdoty_alg_Sylow_777 {n : ℕ} (hn : 6 ≤ n)
  {N : Subgroup (Equiv.Perm (Fin n))} (hNsub : N ≤ A_alt n)
  (hNnormal : Subgroup.Normal N) (hNproper : N ≠ A_alt n) :
  ∀ i : Fin n, { g : Equiv.Perm (Fin n) | g i = i ∧ g ∈ A_alt n } ⊆ (N : Set (Equiv.Perm (Fin n))) := by sorry
