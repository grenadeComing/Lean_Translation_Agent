import Mathlib

/-- If the product of a family of nonempty spaces is regular, then each factor is regular. -/
theorem Munkres_exercise_32_2b {ι : Type _} {X : ι → Type _} [∀ i, TopologicalSpace (X i)]
  (h_nonempty : ∀ i, Nonempty (X i)) :
  RegularSpace (∀ i, X i) → ∀ i, RegularSpace (X i) := by sorry
