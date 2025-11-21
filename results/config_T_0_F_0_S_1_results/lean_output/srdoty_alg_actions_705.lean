import Mathlib

lemma srdoty_alg_actions_705 {G : Type _} [Group G] [Fintype G] {p r : ℕ} (hp : Nat.Prime p)
  (hr : 1 ≤ r) (hcard : Fintype.card G = p ^ r) : ∃ k : ℕ, 1 ≤ k ∧ Fintype.card (center G) = p ^ k := by sorry
