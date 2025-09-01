import Mathlib

/-- If P is a p-Sylow subgroup of G and P ◁ G (normal), then P is the only p-Sylow subgroup of G. -/
theorem unique_p_sylow_of_normal {G : Type*} [Group G] {p : ℕ} [Fact p.Prime] (P : Sylow p G)
  (hn : P.toSubgroup.normalizer = ⊤) : ∀ Q : Sylow p G, Q = P := by sorry
