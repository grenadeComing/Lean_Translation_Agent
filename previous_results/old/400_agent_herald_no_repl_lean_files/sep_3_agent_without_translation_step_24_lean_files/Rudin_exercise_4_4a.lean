import Mathlib

open Set

/-- Rudin Exercise 4.4(a).
If f : X → Y is continuous and E is dense in X, then f(E) is dense in f(X).
We state the conclusion as range f ⊆ closure (f '' E), which implies f(E) is dense in f(X).
-/
theorem Rudin_exercise_4_4a {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {f : X → Y} {E : Set X} (hf : Continuous f) (hE : Dense E) :
  range f ⊆ closure (f '' E) := by sorry
