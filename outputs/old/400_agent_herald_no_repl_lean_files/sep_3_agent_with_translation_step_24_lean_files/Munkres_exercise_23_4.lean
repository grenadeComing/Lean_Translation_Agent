import Mathlib

/-- The cofinite (finite complement) topology: opens are exactly the empty set
    and sets whose complement is finite. -/
def cofinite_topology {X : Type _} [TopologicalSpace X] : Prop :=
  ∀ U : Set X, IsOpen U ↔ U = ∅ ∨ Set.Finite (Set.univ \ U)

/-- Munkres exercise: If X is infinite and equipped with the cofinite topology,
    then X is connected. -/
theorem Munkres_exercise_23_4 (X : Type _) [TopologicalSpace X]
  (hcof : cofinite_topology (X := X))
  (hinf : Set.Infinite (Set.univ : Set X)) : ConnectedSpace X := by
  sorry
