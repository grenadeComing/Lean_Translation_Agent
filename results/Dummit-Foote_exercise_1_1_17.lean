import Mathlib

variable {G : Type*} [Group G] (x : G) {n : ℕ}

/-- If x has finite order n > 0, then x^{-1} = x^{n-1}. -/
theorem Dummit_Foote_exercise_1_1_17 (h : orderOf x = n) (hn : 0 < n) : x⁻¹ = x^(n - 1) := by sorry
