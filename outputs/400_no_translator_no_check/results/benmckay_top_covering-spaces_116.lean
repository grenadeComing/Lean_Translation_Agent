import Mathlib

open TopologicalSpace Set

/-- Every proper local homeomorphism with connected target is a covering map. -/
theorem proper_local_homeomorph_is_covering_map {P Q : Type*} [TopologicalSpace P] [TopologicalSpace Q]
  (f : P → Q) (hproper : IsProperMap f) (hlocal : IsLocalHomeomorph f) (hq : ConnectedSpace Q) :
  IsCoveringMap f := by sorry
