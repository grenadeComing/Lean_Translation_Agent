import Mathlib

/-- If G is a finite nontrivial group and every element has p-power order, then |G| = p^r for some r ≥ 1. -/
theorem card_eq_prime_pow_of_element_orders {G : Type*} [Group G] [Fintype G] [Nontrivial G]
  {p : ℕ} (hp : Nat.Prime p)
  (h : ∀ g : G, ∃ k : ℕ, orderOf g = p ^ k) :
  ∃ r : ℕ, 1 ≤ r ∧ Fintype.card G = p ^ r := by
  sorry
