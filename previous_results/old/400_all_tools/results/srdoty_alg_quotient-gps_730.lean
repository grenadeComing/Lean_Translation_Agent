import Mathlib

/-- Third isomorphism theorem for groups: If H and K are normal subgroups of G with H ≤ K,
then K / H is a normal subgroup of G / H and (G / H) / (K / H) ≃* G / K. -/

theorem third_isomorphism_theorem {G : Type*} [Group G]
  {H K : Subgroup G}
  (H_normal : ∀ g x, x ∈ H → g * x * g⁻¹ ∈ H)
  (K_normal : ∀ g x, x ∈ K → g * x * g⁻¹ ∈ K)
  (hHK : H ≤ K) :
  -- K / H is normal in G / H
  (Subgroup.map (QuotientGroup.mk' H) K).Normal ∧
  -- (G / H) / (K / H) ≃* G / K
  (QuotientGroup.quotient (G ⧸ H) (Subgroup.map (QuotientGroup.mk' H) K)) ≃* (G ⧸ K) := by sorry
