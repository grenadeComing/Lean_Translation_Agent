import Mathlib

/-- Let p be a prime. Prove that if G is a finite group with exactly one Sylow p-subgroup, then that Sylow p-subgroup is normal in G. -/
theorem normal_of_unique_sylow_subgroup {G : Type} [Group G] {p : ℕ} [Fact (Nat.Prime p)]
  [Fintype G] (h : Unique (Sylow p G)) : IsNormal (Sylow p G) := by
  sorry
