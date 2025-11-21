import Mathlib

/-- If a finite group G has a unique Sylow p-subgroup, that Sylow p-subgroup is normal. -/
theorem unique_sylow_is_normal {G : Type*} [Group G] [Fintype G] {p : ℕ} (hp : p.Prime) (P : Sylow p G)
  (huniq : ∀ Q : Sylow p G, Q = P) : (P.toSubgroup).Normal := by sorry
