import Mathlib

/-- If a group contains exactly one element of order 2, then that element is central. -/
theorem Artin_exercise_2_4_19 {G : Type _} [Group G] {g : G}
  (hg_ne : g ≠ 1) (hg2 : g * g = 1) (huniq : ∀ h : G, h ≠ 1 → h * h = 1 → h = g) :
  ∀ x : G, g * x = x * g := by sorry
