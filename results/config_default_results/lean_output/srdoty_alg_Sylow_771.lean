import Mathlib

/-- Let n ≥ 6 and let N be a proper normal subgroup of A_n. For a fixed i in {1,...,n}, let
G_i = {σ in A_n : σ(i) = i} be the subgroup of permutations that fix i. Show that N contains
G_i. -/
theorem srdoty_alg_Sylow_771 {n : ℕ} (h : 6 ≤ n)
  (N : Subgroup (Equiv.Perm (Fin n))) (hNnormal : N.Normal)
  (hNproper : N ≠ (Equiv.Perm.sign : Equiv.Perm (Fin n) →* _).ker)
  (i : Fin n) :
  ∀ σ : Equiv.Perm (Fin n), σ ∈ (Equiv.Perm.sign : Equiv.Perm (Fin n) →* _).ker → σ i = i → σ ∈ N := by sorry