import Mathlib

/-- Third isomorphism theorem for groups (statement only).

If H ⫽ G, K ⫽ G, and H ≤ K then K/H ⫽ G/H and (G/H)/(K/H) ≃* G/K.
-/
theorem third_isomorphism_theorem {G : Type*} [Group G] {H K : Subgroup G}
  (hH : H.normal) (hK : K.normal) (hHK : H ≤ K) :
  (K.map (QuotientGroup.mk H)).normal ∧ ((G ⧸ H) ⧸ (K.map (QuotientGroup.mk H)) ≃* G ⧸ K) := by sorry