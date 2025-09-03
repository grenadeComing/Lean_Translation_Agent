import Mathlib

theorem Munkres_exercise_18_8a {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [Preorder Y] [OrderClosedTopology Y]
  {f g : X → Y} (hf : Continuous f) (hg : Continuous g) : IsClosed { x | f x ≤ g x } := by sorry
