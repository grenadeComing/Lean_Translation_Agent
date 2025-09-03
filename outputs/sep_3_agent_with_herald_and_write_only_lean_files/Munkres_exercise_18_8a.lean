import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [LinearOrder Y] [TopologicalSpace Y] [OrderTopology Y]

/-- Let Y be an ordered set in the order topology. Let f, g : X → Y be continuous.
    The set {x | f x ≤ g x} is closed in X. -/
theorem Munkres_exercise_18_8a {f g : X → Y} (hf : Continuous f) (hg : Continuous g) : IsClosed { x | f x ≤ g x } := by
  sorry
