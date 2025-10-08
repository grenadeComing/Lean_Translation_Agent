import Mathlib

/-- If H and K are finite subgroups of G whose orders are coprime, then H ⊓ K = ⊥. -/
theorem inf_eq_bot_of_coprime_card {G : Type*} [Group G] {H K : Subgroup G}
  [Fintype ↥H] [Fintype ↥K]
  (h : Nat.Coprime (Fintype.card (↥H)) (Fintype.card (↥K))) :
  H ⊓ K = ⊥ := by sorry