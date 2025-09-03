import Mathlib

/-!
Exercise: Show that if the product Π X_α is Hausdorff, then so is each X_α.
Assume each X_α is nonempty.
-/

universe u v

theorem Munkres_exercise_32_2a {ι : Type u} {X : ι → Type v} [∀ i, TopologicalSpace (X i)]
  (hne : ∀ i, Nonempty (X i)) (h : T2Space (∀ i, X i)) : ∀ i, T2Space (X i) := by sorry
