import Mathlib

open Equiv

/-!
Let n ≥ 6 and let N be a proper normal subgroup of A_n.
Show that N contains every subgroup G_i = {σ ∈ A_n : σ(i) = i} for each 1 ≤ i ≤ n.

This file contains a direct translation of the statement; the proof is omitted and replaced by `:= by sorry`.
-/

theorem srdoty_alg_Sylow_777 {n : ℕ} (hn : 6 ≤ n)
  {N : Subgroup (Perm (Fin n))}
  (hNproper : N ≠ ⊤)
  (hNnormal : IsNormal N) :
  ∀ i : Fin n, ∀ σ : Perm (Fin n), σ ∈ AlternatingGroup (Fin n) → σ i = i → σ ∈ N := by
  sorry
