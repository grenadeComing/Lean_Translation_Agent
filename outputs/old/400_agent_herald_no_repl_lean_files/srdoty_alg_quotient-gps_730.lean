import Mathlib

/-- Third isomorphism theorem for groups.
If H ◁ G, K ◁ G and H ≤ K then (1) K/H ◁ G/H and (2) (G/H)/(K/H) ≃* G/K. -/
theorem third_isomorphism_theorem {G : Type _} [Group G] (H K : Subgroup G)
  (hH : H.normal) (hK : K.normal) (hHK : H ≤ K) :
  (K ⧸ H).normal ∧ ((G ⧸ H) ⧸ (K ⧸ H) ≃* G ⧸ K) := by sorry
