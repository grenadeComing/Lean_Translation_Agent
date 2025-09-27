import Mathlib

/-- Let G be a group of order p^r where p is prime and r ≥ 1.
    Then the center Z(G) has order p^k for some integer k ≥ 1. -/
theorem center_card_prime_pow {p r : ℕ} (hp : Nat.Prime p) {G : Type _} [Group G] [Fintype G]
  [Fintype (Subgroup.center G)] (hG : Fintype.card G = p ^ r) :
  ∃ k : ℕ, 1 ≤ k ∧ Fintype.card (Subgroup.center G) = p ^ k := by sorry
