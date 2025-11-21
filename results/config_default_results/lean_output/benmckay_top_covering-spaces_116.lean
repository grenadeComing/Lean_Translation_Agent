import Mathlib

/-!
Every proper local diffeomorphism f : P → Q between manifolds without boundary,
with Q connected, is a covering map.

We state a topological version: a proper local homeomorphism with connected
target is a covering map.
-/

universe u v

/-- If f : X → Y is a proper local homeomorphism and Y is connected, then f is a covering map. -/
theorem proper_local_homeomorph_is_covering_map {X : Type u} {Y : Type v} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y)
  (hf : IsLocalHomeomorph f)
  (hproper : IsProperMap f)
  (hconn : IsConnected Y) :
  IsCoveringMap f := by sorry
