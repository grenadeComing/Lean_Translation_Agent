import Mathlib

/-!
Exercise: Show that if the product Π X_α is regular, then each X_α is regular.
Assume each X_α is nonempty.
-/

theorem Munkres_exercise_32_2b {α : Type*} {X : α → Type*} [∀ a, TopologicalSpace (X a)]
  (h_nonempty : ∀ a, Nonempty (X a)) :
  RegularSpace (∀ a, X a) → ∀ a, RegularSpace (X a) := by
  sorry
