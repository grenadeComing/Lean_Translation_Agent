import Mathlib

/-!
Munkres exercise 32.2(a):
If the product of spaces Π X_α is Hausdorff (T2), then each factor X_α is Hausdorff,
assuming each X_α is nonempty.
-/

theorem Munkres_exercise_32_2a {ι : Type*} {X : ι → Type*}
  [∀ i, TopologicalSpace (X i)] (h : T2Space (∀ i, X i)) (hn : ∀ i, Nonempty (X i))
  (i : ι) : T2Space (X i) := by
  sorry
