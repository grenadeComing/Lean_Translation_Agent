import Mathlib

/-- Let p be a prime. If G is a finite group with exactly one Sylow p-subgroup H,
then H is normal in G. -/
theorem normal_of_unique_sylow {G : Type _} [Group G] [Fintype G] {p : ℕ} [Fact (Nat.Prime p)]
  (H : Subgroup G) (hH : IsSylow p H) (h_unique : ∀ K : Subgroup G, IsSylow p K → K = H) :
  IsNormal H := by sorry
