import Mathlib

/-- Let H be an additive subgroup of the rational numbers with the property that the
multiplicative inverse 1/x belongs to H for every nonzero x in H. Then H is either
the zero subgroup or the whole of Q. -/
theorem Dummit_Foote_exercise_2_1_13 (H : AddSubgroup (Rat))
  (h : ∀ x, x ∈ H → x ≠ 0 → x⁻¹ ∈ H) : H = (⊥ : AddSubgroup (Rat)) ∨ H = (⊤ : AddSubgroup (Rat)) := by sorry
