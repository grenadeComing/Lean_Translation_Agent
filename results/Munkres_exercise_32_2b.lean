import Mathlib

universe u v
variable {ι : Type u} {X : ι → Type v} [∀ i, TopologicalSpace (X i)]

/-- If the product Π X_α is regular, then each X_α is regular. Assume each X_α is nonempty. -/
theorem Munkres_exercise_32_2b (h : RegularSpace ((i : ι) → X i)) (hne : ∀ i, Nonempty (X i)) :
  ∀ i, RegularSpace (X i) := by sorry
