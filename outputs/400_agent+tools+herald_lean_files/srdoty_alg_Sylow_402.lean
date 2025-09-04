import Mathlib

/-- If G is a finite group in which every element has order a power of a fixed prime p,
then |G| = p^r for some integer r >= 1. We assume G is nontrivial. -/
theorem card_of_p_group {G : Type _} [Group G] [Fintype G] {p : ℕ} (hp : Nat.Prime p)
  (h : ∀ g : G, ∃ k : ℕ, orderOf g = p ^ k) (hne : Nontrivial G) :
  ∃ r : ℕ, 1 ≤ r ∧ Fintype.card G = p ^ r := by sorry
