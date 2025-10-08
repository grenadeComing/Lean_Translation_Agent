import Mathlib

open Set

theorem Rudin_exercise_4_4a {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  {f : X → Y} (hf : Continuous f) {E : Set X} (hE : Dense E) :
  closure (f '' E) = closure (f '' (univ : Set X)) := by sorry
