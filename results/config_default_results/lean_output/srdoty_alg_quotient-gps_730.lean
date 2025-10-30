import Mathlib

universe u

variable {G : Type u} [Group G]
variable (H K : Subgroup G)
variable (hH : H ⊲ G) (hK : K ⊲ G) (h : H ≤ K)

/-- If H ≤ K with H and K normal in G, then (K/H) is normal in G/H and
  ((G/H)/(K/H)) ≃ G/K. -/
lemma quotient_normal_and_iso :
  ((K ⧸ H) ⊲ (G ⧸ H)) ∧ (((G ⧸ H) ⧸ (K ⧸ H)) ≃* (G ⧸ K)) := by
  sorry