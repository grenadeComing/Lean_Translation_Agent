import Mathlib

/-- If P is a Sylow p-subgroup of G and H is a subgroup of G containing P,
then P is a Sylow p-subgroup of H. -/
def sylow_subgroup_of_le {G : Type*} [Group G] {p : ℕ} [Fact (Nat.Prime p)] [Fintype G]
  (P : Sylow p G) (H : Subgroup G) (h : P.toSubgroup ≤ H) : Sylow p (↥H) := by sorry
