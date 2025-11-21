import Mathlib

variable {G : Type _} [Group G] {H K : Subgroup G}

/-- If H ⫽ G, K ⫽ G and H ≤ K then (K/H) ⫽ (G/H) and (G/H)/(K/H) ≃* G/K. -/
theorem srdoty_alg_quotient_gps_730
  (hH : H.Normal) (hK : K.Normal) (hHK : H ≤ K) :
  let N := Subgroup.map (QuotientGroup.mk : G →* G ⧸ H) K in
  N.Normal ∧ (∀ [inst : N.Normal], ((G ⧸ H) ⧸ N ≃* G ⧸ K)) := by
  sorry
