import Mathlib
open Equiv Equiv.Perm Subgroup
open Subgroup

/-- Let n ≥ 6 and let N be a proper normal subgroup of A_n. For a fixed i ∈ Fin n, let G_i = {σ ∈ A_n : σ(i) = i} be the subgroup of permutations that fix i. Show that N contains G_i. -/
theorem subgroup_fixing_point_subset_of_normal {n : ℕ} (N : Subgroup (Perm (Fin n))) [N.Normal]
    (i : Fin n) (hN : N ≤ alternatingGroup (Fin n)) :
    (Perm.fixedByPerm (i : Perm (Fin n))) ⊆ N := by sorry
