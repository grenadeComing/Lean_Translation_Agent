import Mathlib

variable {G : Type*} [Group G]

/-- If a group contains exactly one element of order 2, then that element is in the center. -/
theorem Artin_exercise_2_4_19 {a : G}
  (ha : a ≠ 1) (ha2 : a * a = 1)
  (huniq : ∀ x : G, x ≠ 1 → x * x = 1 → x = a) :
  ∀ g : G, a * g = g * a := by sorry
