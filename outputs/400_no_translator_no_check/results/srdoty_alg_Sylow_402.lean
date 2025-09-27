import Mathlib

/-- If G is a finite group in which every element has order a power of a fixed prime p,
then |G| = p^r for some integer r ≥ 1. -/
theorem srdoty_alg_Sylow_402 {p : ℕ} (hp : Nat.Prime p) {G : Type*} [Group G] [Fintype G]
  (h : ∀ g : G, ∃ n : ℕ, orderOf g = p ^ n) : IsPGroup p G := by sorry
