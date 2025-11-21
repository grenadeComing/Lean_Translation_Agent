import Mathlib

/-- Every proper local diffeomorphism between manifolds without boundary with connected target
    is a covering map. -/
theorem proper_local_diffeomorph_is_covering_map {P Q : Type*} [TopologicalSpace P] [TopologicalSpace Q]
  [Manifold P] [Manifold Q] [WithoutBoundary P] [WithoutBoundary Q]
  (f : P → Q) (hf : IsLocalDiffeomorph f) (h_proper : IsProperMap f) (hq : ConnectedSpace Q) :
  IsCoveringMap f := by sorry