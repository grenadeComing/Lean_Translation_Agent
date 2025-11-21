import Mathlib

/-- If G is a finite group in which every element has order a power of a fixed prime p,
then |G| is a power of p. -/
theorem finite_group_orders_power_of_prime {G : Type*} [Group G] [Fintype G] {p : ℕ}
  (hp : Nat.Prime p) (h_pow : ∀ x : G, ∃ k : ℕ, orderOf x = p ^ k) : ∃ r : ℕ, Fintype.card G = p ^ r := by sorry