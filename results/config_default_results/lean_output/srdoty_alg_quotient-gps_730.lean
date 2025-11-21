import Mathlib

variable {G : Type _} [Group G]
variable {H K : Subgroup G}

/-- Third isomorphism theorem for groups.
If H ◃ G, K ◃ G and H ≤ K then (K/H) ◃ (G/H) and (G/H)/(K/H) ≃* G/K. -/
theorem third_isomorphism_theorem [hH : H.Normal] [hK : K.Normal] (h : H ≤ K) :
  (K.map (QuotientGroup.mk' H)).Normal ∧ ((G ⧸ H) ⧸ (K.map (QuotientGroup.mk' H)) ≃* G ⧸ K) := by sorry
