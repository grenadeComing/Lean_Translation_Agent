import Mathlib

open Set

variable {X Y : Type*} [MetricSpace X] [MetricSpace Y] {E : Set X} {f : X → Y}

/-- Rudin exercise 4.2(a): If f is continuous, f(cl E) ⊆ cl(f(E)). -/
theorem Rudin_exercise_4_2a (hf : Continuous f) : f '' closure E ⊆ closure (f '' E) := by
  sorry
