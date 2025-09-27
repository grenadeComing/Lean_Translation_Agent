import Mathlib

/-- Every proper local homeomorphism between topological spaces with connected target is a covering map.
    This is a topological version of: every proper local diffeomorphism between manifolds without boundary
    with connected target is a covering map. -/
theorem proper_local_homeomorph_is_covering {P Q : Type _} [TopologicalSpace P] [TopologicalSpace Q]
  (f : P → Q) (hlocal : IsLocalHomeomorph f) (hproper : IsProperMap f) (hq : ConnectedSpace Q) :
  IsCoveringMap f := by sorry
