import Mathlib

open Equiv

/-- Let n ≥ 6 and let N be a proper normal subgroup of A_n. For a fixed i ∈ {1,…,n},
    let G_i = {σ ∈ A_n : σ(i) = i} be the subgroup of permutations that fix i.
    Show that N contains G_i. -/
theorem srdoty_alg_Sylow_771 (n : ℕ) (hn : 6 ≤ n) (i : Fin n)
  (N : Subgroup (AlternatingGroup (Fin n))) (hN : N ≠ ⊤) :
  { σ : AlternatingGroup (Fin n) | (σ : Perm (Fin n)) i = i } ⊆ (N : Set (AlternatingGroup (Fin n))) := by sorry
