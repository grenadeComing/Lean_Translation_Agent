import Mathlib

universe u

theorem Dummit_Foote_exercise_1_1_17 {G : Type u} [Group G] (x : G) {n : ℕ}
  (h : orderOf x = n) (hn : 0 < n) : x⁻¹ = x ^ (n - 1) := by sorry
