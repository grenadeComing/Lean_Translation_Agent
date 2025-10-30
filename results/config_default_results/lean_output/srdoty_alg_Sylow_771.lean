import Mathlib
open Equiv Equiv.Perm Subgroup Fintype
open Equiv.Perm
open alternatingGroup

/-- Let n ≥ 6 and let N be a proper normal subgroup of A_n. For a fixed i ∈ {1, ..., n}, let G_i = { σ ∈ A_n : σ(i) = i } be the subgroup of permutations that fix i. Show that N contains G_i. -/
theorem subgroup_fixing_point_subset_of_normal {n : ℕ} (N : Subgroup (Perm (Fin n))) [N.Normal]
    [Fact (6 ≤ n)] (i : Fin n) : G_i ≤ N := by
  sorry