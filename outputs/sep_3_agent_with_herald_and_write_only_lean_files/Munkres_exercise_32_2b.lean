import Mathlib

open Topology

variable {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)] [∀ i, Nonempty (X i)]

/-- If the product Π X_α is regular, then each factor X_α is regular. -/
theorem Munkres_exercise_32_2b : RegularSpace (∀ i, X i) → ∀ i, RegularSpace (X i) := by sorry
