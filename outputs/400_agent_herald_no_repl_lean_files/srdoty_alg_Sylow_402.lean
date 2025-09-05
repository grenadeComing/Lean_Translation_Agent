import Mathlib

/-- If G is a finite group and every element has order a power of a fixed prime p,
    then the order of G is a power of p. -/
theorem srdoty_alg_Sylow_402 {G : Type _} [Group G] [Fintype G] {p : ℕ} (hp : Nat.Prime p)
  (h_elem_pow : ∀ g : G, ∃ k : ℕ, orderOf g = p ^ k) (hne : Fintype.card G ≠ 1) :
  ∃ r : ℕ, 1 ≤ r ∧ Fintype.card G = p ^ r := by sorry
