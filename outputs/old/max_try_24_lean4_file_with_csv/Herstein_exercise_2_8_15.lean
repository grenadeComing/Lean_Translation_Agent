import Mathlib

theorem Herstein_exercise_2_8_15 {p q : ℕ} (hp : p.Prime) (hq : q.Prime) (hpq : p > q) (hdiv : q ∣ p - 1)
  (G H : Type*) [Group G] [Group H] [Fintype G] [Fintype H]
  (hG : Fintype.card G = p * q) (hH : Fintype.card H = p * q)
  (nG : ∃ x y : G, x * y ≠ y * x) (nH : ∃ x y : H, x * y ≠ y * x) :
  Nonempty (G ≃* H) := by sorry
