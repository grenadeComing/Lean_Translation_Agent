import Mathlib

/-- Rudin Exercise 4.2(a).
If f is a continuous mapping of a metric space X into a metric space Y,
then f(closure E) ⊆ closure (f(E)) for every set E ⊆ X.
We state the result in the generality of topological spaces.
-/
theorem Rudin_exercise_4_2a {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] {f : X → Y} {E : Set X}
  (hf : Continuous f) : f '' closure E ⊆ closure (f '' E) := by sorry
