import Mathlib

/-- Let G be a group of order p^r where p is prime and r ≥ 1. Then the center Z(G) has order p^k for some k ≥ 1. -/
theorem p_group_center_card_pow (G : Type*) [Group G] [Fintype G] (p r : ℕ) (hp : Nat.Prime p)
  (hG : Fintype.card G = p ^ r) (hr : 1 ≤ r) : ∃ k : ℕ, 1 ≤ k ∧ Fintype.card (Center G) = p ^ k := by sorry