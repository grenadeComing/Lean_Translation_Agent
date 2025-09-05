import Mathlib

/-- Let G be a group of order p^r where p is prime and r ≥ 1. Then the center of G has order p^k for some k ≥ 1. -/
theorem center_card_pow_prime {G : Type _} [Group G] [Fintype G] {p r : ℕ} (hp : p.Prime) (hr : 1 ≤ r)
  (hcard : Fintype.card G = p ^ r) : ∃ k : ℕ, 1 ≤ k ∧ Fintype.card (center G) = p ^ k := by sorry
