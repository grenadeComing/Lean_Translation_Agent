import Mathlib

open Equiv

/-
For n ≥ 6, any proper normal subgroup N of the alternating group A_n contains the
point-stabiliser subgroups G_i = {σ ∈ A_n | σ i = i} for each i.

This file only states the lemma; the proof is omitted (``by sorry'').
-/

variable {n : ℕ}

theorem proper_normal_subgroup_of_An_contains_point_stabilisers
  (hn : 6 ≤ n)
  (N : Subgroup (Perm (Fin n)))
  (hNnormal : N.normal)
  (hNsub : N ≤ AlternatingGroup (Fin n))
  (hNproper : N ≠ AlternatingGroup (Fin n)) :
  ∀ i : Fin n,
    ({ σ : Perm (Fin n) | σ i = i } ∩ (AlternatingGroup (Fin n) : Set (Perm (Fin n)))) ⊆ (N : Set (Perm (Fin n))) := by sorry
