import Mathlib

/--
Let H be an additive subgroup of the rationals with the property that 1/x ∈ H for every nonzero x ∈ H.
Then H = 0 or H = ℚ.
-/
theorem Dummit_Foote_exercise_2_1_13 (H : AddSubgroup ℚ)
  (h : ∀ x, x ∈ H → x ≠ 0 → x⁻¹ ∈ H) : H = ⊥ ∨ H = ⊤ := by sorry
