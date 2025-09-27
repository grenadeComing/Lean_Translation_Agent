import Mathlib

/-!
Exercise (Dummit & Foote 3.3.3) — informal translation to Lean4/Mathlib
If H ⊲ G has prime index p, then for every subgroup K ≤ G either K ≤ H,
or G = H K and |K : K ⊓ H| = p.

This file only states the theorem (with `:= by sorry`) and does not provide a proof.
-/

variable {G : Type*} [Group G]

open Set

theorem Dummit_Foote_exercise_3_3_3
  (H : Subgroup G) {p : ℕ} (hp : Nat.Prime p)
  (Hnormal : H.normal)
  (hindex : Fintype.card (QuotientGroup.quotient H) = p) :
  ∀ (K : Subgroup G),
    (K ≤ H) ∨ (
      (H : Set G) * (K : Set G) = (Set.univ : Set G) ∧
      Fintype.card (QuotientGroup.quotient (K ⊓ H)) = p
    ) := by sorry
