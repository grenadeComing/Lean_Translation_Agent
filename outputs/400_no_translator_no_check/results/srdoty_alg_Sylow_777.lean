import Mathlib

open Equiv

variable {n : ℕ}

/--
Let n ≥ 6 and let N be a proper normal subgroup of A_n. Show that N contains every subgroup
G_i = {σ ∈ A_n : σ i = i} for each 1 ≤ i ≤ n.

This is a direct formalization of the statement; the proof is omitted (:= by sorry).
-/
theorem srdoty_alg_Sylow_777
  (hn : 6 ≤ n)
  (N : Subgroup (Equiv.Perm (Fin n)))
  (hN_mem_alt : ∀ σ, σ ∈ N → σ ∈ alternatingGroup (Fin n))
  (hN_normal : ∀ σ, σ ∈ alternatingGroup (Fin n) → ∀ τ, τ ∈ N → σ * τ * σ⁻¹ ∈ N)
  (hN_proper : N ≠ alternatingGroup (Fin n)) :
  ∀ i : Fin n, ∀ σ : Equiv.Perm (Fin n), σ ∈ alternatingGroup (Fin n) → σ i = i → σ ∈ N := by sorry
