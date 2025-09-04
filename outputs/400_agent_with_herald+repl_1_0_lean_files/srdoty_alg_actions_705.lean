import Mathlib

theorem p_group_center_card_pow {G : Type _} [Group G] [Fintype G] [Fintype (MulCenter G)]
  {p r : ℕ} (hp : Nat.Prime p) (hr : 1 ≤ r) (hcard : Fintype.card G = p ^ r) :
  ∃ k : ℕ, 1 ≤ k ∧ Fintype.card (MulCenter G) = p ^ k := by sorry
