import Mathlib

/-!
Exercise: Let Y be an ordered set in the order topology. Let f, g : X → Y be continuous.
Show that the set { x | f x ≤ g x } is closed in X.
-/

open Set

theorem Munkres_exercise_18_8a {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [Preorder Y] [OrderTopology Y] {f g : X → Y} (hf : Continuous f) (hg : Continuous g) :
  IsClosed ({ x : X | f x ≤ g x }) := by sorry
