import Mathlib

/--
If the product Π X_i is Hausdorff (T2) and each X_i is nonempty,
then each factor X_i is Hausdorff.
-/
theorem Munkres_exercise_32_2a {ι : Type _} {X : ι → Type _} [∀ i, TopologicalSpace (X i)]
  (h_nonempty : ∀ i, Nonempty (X i)) :
  T2Space (∀ i, X i) → ∀ i, T2Space (X i) := by sorry
