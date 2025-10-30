import Mathlib

/-- If G is a finite group in which every element has order a power of a fixed prime p, then |G| = p^r for some r ≥ 1. -/
theorem card_eq_pow_of_prime_orderOf {G : Type*} [Group G] [Finite G] (p : ℕ) (hp : Nat.Prime p)
  (h : ∀ g : G, ∃ r : ℕ, orderOf g = p ^ r) : ∃ r : ℕ, 1 ≤ r ∧ Nat.card G = p ^ r := by
  sorry
