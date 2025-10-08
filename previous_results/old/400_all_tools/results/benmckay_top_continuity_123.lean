import Mathlib

/-!
Take two continuous maps f, g : X → Y. Let A ⊂ X be the set of points at which f = g.
If Y is Hausdorff, then A is closed.
-/

theorem is_closed_eq_locus {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
  {f g : X → Y} (hf : Continuous f) (hg : Continuous g) :
  IsClosed { x | f x = g x } := by sorry
