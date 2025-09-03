import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [LinearOrder Y] [OrderTopology Y]

/-- Let Y be an ordered set in the order topology. Let f, g : X → Y be continuous.
    Then h(x) = min (f x) (g x) is continuous. -/
theorem Munkres_exercise_18_8b (f g : X → Y) (hf : Continuous f) (hg : Continuous g) :
  Continuous fun x => min (f x) (g x) := by
  sorry
