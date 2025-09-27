import Mathlib

open Equiv
open Equiv.Perm

/--
Let n ≥ 6 and let N be a proper normal subgroup of A_n. For a fixed i in Fin n,
let G_i = {σ ∈ A_n | σ i = i} be the subgroup fixing i. Then N contains G_i.
-/
theorem normal_subgroup_contains_point_stabilizer {n : Nat} (hn : 6 ≤ n)
  (i : Fin n)
  (N : Subgroup (Equiv.Perm (Fin n)))
  (hN_in_A : ∀ σ, σ ∈ N → σ ∈ alternatingGroup (Fin n))
  (hN_normal : ∀ g τ, g ∈ alternatingGroup (Fin n) → τ ∈ N → g * τ * g⁻¹ ∈ N)
  (hN_proper : N ≠ ⊤) :
  ∀ σ : Equiv.Perm (Fin n), σ i = i → σ ∈ alternatingGroup (Fin n) → σ ∈ N := by sorry
