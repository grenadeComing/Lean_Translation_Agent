import Mathlib

open Equiv

/--
Let n ≥ 6 and let N be a proper normal subgroup of A_n. For a fixed i ∈ Fin n,
let G_i = {σ ∈ A_n | σ i = i} be the subgroup of permutations that fix i.
Then N contains G_i.
-/
theorem srdoty_alg_Sylow_771 (n : ℕ) (hn : 6 ≤ n) {i : Fin n}
  (N : Subgroup (AlternatingGroup (Fin n))) (hNnormal : N.normal) (hNproper : N ≠ ⊤) :
  ∀ σ : AlternatingGroup (Fin n), ( (σ : Equiv.Perm (Fin n)) i = i ) → σ ∈ (N : Set (AlternatingGroup (Fin n))) := by sorry
