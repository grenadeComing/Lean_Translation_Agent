import Mathlib

open Equiv

/--
For n ≥ 6, let N be a proper normal subgroup of A_n (the alternating group on n letters).
Then N contains every point stabilizer G_i = {σ ∈ A_n | σ i = i} for each i.
This statement is the formalization of the informal claim; the proof is omitted.
-/
theorem subgroup_point_stabilizers_mem_of_normal_proper {n : ℕ} (hn : 6 ≤ n)
  (N : Subgroup (alternatingGroup (Fin n))) (hN : IsNormal N) (hproper : N ≠ ⊤) :
  ∀ i : Fin n, ∀ σ : alternatingGroup (Fin n), (σ : Perm (Fin n)) i = i → σ ∈ N := by sorry