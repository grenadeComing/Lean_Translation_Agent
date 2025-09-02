import Mathlib

theorem Herstein_exercise_2_5_44 {G : Type*} [Group G] [Fintype G] (p : ℕ) (hp : Nat.Prime p)
  (hcard : Fintype.card G = p ^ 2) :
  ∃ H : Subgroup G, H.normal ∧ Fintype.card H = p := by
sorry
