import Mathlib

/-!
Take two continuous maps f, g : X → Y. Let A ⊆ X be the set of points at which f = g.
If Y is Hausdorff (T2), then A is closed.
-/

theorem is_closed_eq_of_continuous {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {f g : X → Y} (hf : Continuous f) (hg : Continuous g) :
  IsClosed {x | f x = g x} := by
  -- proof omitted
  sorry
