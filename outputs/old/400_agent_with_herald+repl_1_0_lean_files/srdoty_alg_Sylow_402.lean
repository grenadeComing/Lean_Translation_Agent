import Mathlib

/-- If G is a finite group in which every element has order a power of a fixed prime p,
then |G| = p^r for some integer r ≥ 1. We assume the group is nontrivial (card > 1).
-/
theorem group_card_pow_of_p_element_orders {G : Type*} [Group G] [Fintype G] {p : ℕ} (hp : p.Prime)
  (h : ∀ g : G, ∃ k : ℕ, orderOf g = p ^ k)
  (hne : Fintype.card G > 1) : ∃ r : ℕ, Fintype.card G = p ^ r := by
  sorry
