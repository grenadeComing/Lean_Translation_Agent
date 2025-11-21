import Mathlib

variable {G : Type _} [Group G] [Fintype G]

variable (p : ℕ) [Fact (Nat.Prime p)]

theorem unique_sylow_is_normal {P : Subgroup G}
  (hP : IsSylow p P)
  (h_unique : ∀ Q : Subgroup G, IsSylow p Q → Q = P) : IsNormal P := by sorry
