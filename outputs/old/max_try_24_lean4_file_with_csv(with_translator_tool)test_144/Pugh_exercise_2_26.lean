import Mathlib

/-- Exercise (Pugh 2.26)

A set U in a topological space X is open iff none of its points are limits of its complement.
Formally: IsOpen U ↔ ∀ x ∈ U, x ∉ closure (Uᶜ).
-/
theorem Pugh_exercise_2_26 {X : Type _} [TopologicalSpace X] (U : Set X) :
  IsOpen U ↔ ∀ x ∈ U, x ∉ closure (Uᶜ) := by
  sorry
