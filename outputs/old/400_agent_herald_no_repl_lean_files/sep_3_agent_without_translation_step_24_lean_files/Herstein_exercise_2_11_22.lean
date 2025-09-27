import Mathlib

/-
Exercise: Show that any subgroup of order p^{n-1} in a group G of order p^n is normal in G.
File: Herstein_exercise_2_11_22.lean
-/

theorem herstein_exercise_2_11_22 {G : Type _} [Group G] [Fintype G] {p n : ℕ} (H : Subgroup G)
  (hp : Nat.Prime p) (hG : Nat.card G = p ^ n) (hH : Nat.card (↥H) = p ^ (n - 1)) : H.Normal := by
  sorry
