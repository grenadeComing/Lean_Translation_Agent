import Mathlib

/-- Let p be a prime. If G is a finite group with exactly one Sylow p-subgroup, then that Sylow
p-subgroup is normal in G. -/
theorem unique_sylow_normal {G : Type*} [Group G] [Fintype G] {p : ℕ} [Fact (Nat.Prime p)]
  (P : Subgroup G) (hP : IsSylow p P)
  (h_unique : ∀ Q : Subgroup G, IsSylow p Q → Q = P) : IsNormal P := by sorry