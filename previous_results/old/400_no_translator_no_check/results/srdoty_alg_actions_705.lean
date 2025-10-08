import Mathlib

/-!
Let G be a group of order p^r where p is prime and r ≥ 1. Prove that |Z(G)| = p^k for some k ≥ 1.
We only state the theorem here and leave the proof as `sorry`.
-/

open Finset

theorem center_card_of_p_group {G : Type _} [Group G] [Fintype G] {p r : ℕ}
  (hp : Nat.Prime p) (hr : r ≥ 1) (hcard : Fintype.card G = p ^ r)
  [Fintype (Subgroup.center G)] :
  ∃ k : ℕ, 1 ≤ k ∧ Fintype.card (Subgroup.center G) = p ^ k := by
  sorry
