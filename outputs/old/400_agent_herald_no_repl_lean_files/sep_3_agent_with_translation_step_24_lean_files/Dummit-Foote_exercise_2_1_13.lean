import Mathlib

/-- Let H be an additive subgroup of the rational numbers with the property that for every nonzero
    x ∈ H we have x⁻¹ ∈ H. Then H = ⊥ or H = ⊤. -/
theorem Dummit_Foote_exercise_2_1_13 (H : AddSubgroup Rat)
  (h : ∀ x ∈ H, x ≠ 0 → x⁻¹ ∈ H) : H = (⊥ : AddSubgroup Rat) ∨ H = (⊤ : AddSubgroup Rat) := by sorry
