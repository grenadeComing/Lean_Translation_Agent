import Mathlib

open Subgroup

variable {G : Type _} [Group G] [Fintype G]
variable {p : ℕ} [Fact (Nat.Prime p)]

/-- If P is a p-Sylow subgroup of G and P ◁ G, then P is the unique p-Sylow subgroup of G. -/
theorem sylow_normal_unique {P : Subgroup G} (hP : IsSylow p P) (hPnormal : P.normal) :
  ∀ Q : Subgroup G, IsSylow p Q → Q = P := by sorry
