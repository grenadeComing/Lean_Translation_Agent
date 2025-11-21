import Mathlib

theorem quotient_quotient_gps_730 (G : Type*) [Group G] {H K : Subgroup G}
  (hH : H.normal) (hK : K.normal) (hHK : H ≤ K) :
  (K.map (QuotientGroup.mk H)).normal ∧
  (MulEquiv ((G ⧸ H) ⧸ (K.map (QuotientGroup.mk H))) (G ⧸ K)) := by sorry