import Mathlib

/-!
Statement: If G is a finite group in which every element has order a power of a fixed prime p,
then |G| = p^r for some integer r ≥ 1 (assuming G is nontrivial).
-/-

theorem srdoty_alg_Sylow_402 (p : ℕ) (hp : Nat.Prime p) {G : Type _} [Group G] [Fintype G]
  [Nontrivial G]
  (h_pow_order : ∀ g : G, ∃ n : ℕ, orderOf g = p ^ n) :
  ∃ r : ℕ, 1 ≤ r ∧ Fintype.card G = p ^ r := by
  sorry
