import Mathlib

variable {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)]

/-- If the product space Π X_i is normal and each X_i is nonempty, then each factor X_i is normal. -/
lemma Munkres_exercise_32_2c (ne : ∀ i, Nonempty (X i)) (h : NormalSpace (∀ i, X i)) (i : ι) :
  NormalSpace (X i) := by sorry
