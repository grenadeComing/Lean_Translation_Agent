import Mathlib

/-- If X is regular, any two distinct points have neighborhoods with disjoint closures. -/
theorem munkres_exercise_31_1 {X : Type _} [TopologicalSpace X] [RegularSpace X] {x y : X} (hxy : x ≠ y) :
  ∃ (U V : Set X), IsOpen U ∧ IsOpen V ∧ x ∈ U ∧ y ∈ V ∧ closure U ∩ closure V = ∅ := by sorry
