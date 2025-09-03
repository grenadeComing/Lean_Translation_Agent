import Mathlib

-- If a group contains exactly one element of order 2, that element is central.
-- We state the uniqueness directly: any element whose square is 1 is either 1 or the given a.

theorem artin_exercise_2_4_19 {G : Type*} [Group G] {a : G}
  (ha_nonid : a ≠ 1) (ha_sq : a * a = 1)
  (h_unique : ∀ b : G, b * b = 1 → b = 1 ∨ b = a) :
  ∀ g : G, a * g = g * a := by sorry
