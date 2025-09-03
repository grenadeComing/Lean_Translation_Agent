import Mathlib

theorem Dummit_Foote_exercise_4_2_9a {G : Type _} [Group G] [Fintype G] {p : ℕ} (hp : Nat.Prime p) {α : ℕ} (hα : α > 0)
  (hcard : Fintype.card G = p ^ α) (H : Subgroup G) (hindex : H.index = p) :
  ∀ g x, x ∈ H ↔ g * x * g⁻¹ ∈ H := by sorry
