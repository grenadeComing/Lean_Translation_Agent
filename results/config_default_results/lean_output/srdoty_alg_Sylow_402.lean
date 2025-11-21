import Mathlib

/-- Let G be a finite group and p a prime. Suppose every element of G has order a power of p. 
Then |G| = p^r for some integer r ≥ 1. -/
theorem card_eq_pow_of_p_group {G : Type*} [Group G] [Fintype G] (p : ℕ) [hp : Fact p.Prime]
  (h : ∀ g : G, ∃ n : ℕ, orderOf g = p ^ n) (h_nontriv : Fintype.card G ≠ 1) : ∃ r : ℕ, 1 ≤ r ∧ Fintype.card G = p ^ r := by sorry