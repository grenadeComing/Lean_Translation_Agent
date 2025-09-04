import Mathlib

-- Translation of: If H ◃ G, K ◃ G, and H ≤ K then (K/H) ◃ (G/H) and (G/H)/(K/H) ≃* G/K.
--
-- example (G : Type*) [Group G] (H K : Subgroup G) (hH : H.normal) (hK : K.normal) (hHK : H ≤ K) :
--   (Subgroup.map (QuotientGroup.mk H) K).normal ∧
--   Subgroup.quotient (Subgroup.map (QuotientGroup.mk H) K) ≃* Subgroup.quotient K := by sorry

example : True := by trivial
