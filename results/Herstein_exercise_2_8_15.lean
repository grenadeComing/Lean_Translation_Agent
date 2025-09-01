import Mathlib

open Nat

theorem herstein_exercise_2_8_15 {p q : ℕ} (hp : Nat.Prime p) (hq : Nat.Prime q)
  (hpq : p > q) (hd : q ∣ p - 1) :
  ∀ {G H : Type _} [Group G] [Fintype G] [Group H] [Fintype H],
    Fintype.card G = p * q → Fintype.card H = p * q →
    (¬ (∀ x y : G, x * y = y * x)) → (¬ (∀ x y : H, x * y = y * x)) →
    Nonempty (G ≃* H) := by
  sorry
