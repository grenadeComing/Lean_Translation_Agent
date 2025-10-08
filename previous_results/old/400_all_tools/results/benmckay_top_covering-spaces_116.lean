import Mathlib

/-- A proper local homeomorphism with connected target is a covering map. -/
theorem proper_local_homeomorph.is_covering_of_connected (X Y : Type) [TopologicalSpace X]
  [TopologicalSpace Y] (f : X → Y)
  (h_local : IsLocalHomeomorph f)
  (h_prop : IsProperMap f)
  (h_conn : IsConnected Y) :
  IsCoveringMap f := by sorry
