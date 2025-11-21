import Mathlib

open Equiv

/-- Let n ≥ 6 and let N be a proper normal subgroup of the alternating group A_n on {1,...,n}.
For a fixed i : Fin n, let G_i := {σ : Perm (Fin n) | σ ∈ AlternatingGroup (Fin n) ∧ σ i = i}
denote the subgroup of permutations in A_n that fix i. Then N contains G_i. -/
theorem normal_subgroup_contains_point_stabilizer {n : ℕ} (h : 6 ≤ n)
  {N : Subgroup (Perm (Fin n))} (hNnormal : N.Normal)
  (hNsub : N ≤ AlternatingGroup (Fin n)) (hNproper : N ≠ AlternatingGroup (Fin n))
  (i : Fin n) :
  { σ : Perm (Fin n) | σ ∈ AlternatingGroup (Fin n) ∧ σ i = i } ⊆ (N : Set (Perm (Fin n))) := by sorry