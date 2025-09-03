import Mathlib

/-!
Show that if the product Π X_α is normal, then so is each X_α.
Assume that each X_α is nonempty.
-/

theorem Munkres_exercise_32_2c {ι : Type*} {X : ι → Type*}
  [∀ i, TopologicalSpace (X i)] [∀ i, Nonempty (X i)] :
  NormalSpace (∀ i, X i) → ∀ j, NormalSpace (X j) := by sorry
