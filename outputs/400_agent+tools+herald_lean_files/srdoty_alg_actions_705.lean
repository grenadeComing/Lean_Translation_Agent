import Mathlib

/-- Let G be a group of order p^r where p is prime and r ≥ 1. Prove that |Z(G)| = p^k for some k ≥ 1. -/
theorem center_order_pow_prime {G : Type*} [Group G] [Fintype G] {p r : ℕ} (hp : Nat.Prime p)
  (hr : 1 ≤ r) (hG : Fintype.card G = p ^ r)
  (hZ : Fintype { g : G // ∀ x : G, g * x = x * g }) :
  ∃ k : ℕ, 1 ≤ k ∧ Fintype.card { g : G // ∀ x : G, g * x = x * g } = p ^ k := by sorry
