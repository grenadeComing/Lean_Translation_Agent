import Mathlib

/-
If H is a normal subgroup of G of prime index p then for all K ≤ G
either K ≤ H, or G = H K and |K : K ∩ H| = p.

This is a direct translation of the exercise statement; the proof is omitted.
-/

open Subgroup Pointwise

theorem Dummit_Foote_exercise_3_3_3 {G : Type*} [Group G] (p : ℕ) (hp : Fact (Nat.Prime p))
  {H : Subgroup G} (hHnormal : ∀ g : G, g * (H : Set G) = (H : Set G) * g) (hHindex : H.index = p) :
  ∀ K : Subgroup G, K ≤ H ∨ (H ⊔ K = (⊤ : Subgroup G) ∧ K.index = p) :=
by sorry
