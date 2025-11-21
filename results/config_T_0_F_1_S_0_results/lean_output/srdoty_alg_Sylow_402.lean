import Mathlib

theorem srdoty_alg_sylow_402 {G : Type _} [Group G] [Fintype G]
  (p : ℕ) (hp : Nat.Prime p)
  (hpow : ∀ g : G, ∃ k : ℕ, orderOf g = p ^ k)
  (hnontriv : Nontrivial G) :
  ∃ r : ℕ, 1 ≤ r ∧ Fintype.card G = p ^ r := by sorry
