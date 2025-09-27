import Mathlib

open Equiv

/-!
Let n ≥ 6 and let N be a proper normal subgroup of A_n. For a fixed i : Fin n,
let G_i = {σ ∈ A_n | σ i = i}. Show that N contains G_i.
-/

theorem srdoty_alg_Sylow_771 {n : Nat} (hn : 6 ≤ n) (N : Subgroup (Perm (Fin n)))
  (N_sub : ∀ g, g ∈ N → g ∈ alternatingGroup (Fin n))
  (N_normal : ∀ a m, a ∈ alternatingGroup (Fin n) → m ∈ N → a * m * a⁻¹ ∈ N)
  (N_proper : N ≠ ⊤) (i : Fin n) :
  ∀ σ : Perm (Fin n), σ ∈ alternatingGroup (Fin n) → σ i = i → σ ∈ N := by sorry