import Mathlib

variable {α : Type _} [TopologicalSpace α]

/-- If A and B are disjoint closed sets in a topological space, they are separated. -/
theorem Rudin_exercise_2_19a {A B : Set α} (hA : IsClosed A) (hB : IsClosed B) (hdisj : A ∩ B = ∅) :
  closure A ∩ B = (∅ : Set α) ∧ A ∩ closure B = (∅ : Set α) := by sorry
