import Mathlib

open TopologicalSpace

variable {P Q : Type*} [TopologicalSpace P] [TopologicalSpace Q]

/-- A proper local homeomorphism with connected target is a covering map. -/
theorem proper_local_homeomorph_is_covering_map (f : P → Q)
  (hf : IsProperMap f) (hl : IsLocalHomeomorph f) (hq : ConnectedSpace Q) :
  IsCoveringMap f := by sorry
