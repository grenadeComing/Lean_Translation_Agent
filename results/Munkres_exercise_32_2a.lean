import Mathlib

/-- If the product of a family of nonempty topological spaces is Hausdorff (T2),
then each factor is Hausdorff. -/
theorem Munkres_exercise_32_2a {ι : Type _} {X : ι → Type _} [∀ i, TopologicalSpace (X i)]
  (h_nonempty : ∀ i, Nonempty (X i)) :
  T2Space (∀ i, X i) → ∀ i, T2Space (X i) := by sorry
