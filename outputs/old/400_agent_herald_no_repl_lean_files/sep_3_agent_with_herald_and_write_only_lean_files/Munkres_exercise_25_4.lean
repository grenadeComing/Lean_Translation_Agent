import Mathlib
open Topology Set

/-- Let X be locally path connected. Show that every connected open set in X is path connected. -/
theorem isPathConnected_of_isConnected_open_extracted {X : Type*} [TopologicalSpace X] [LocPathConnectedSpace X] {s : Set X} :
  IsConnected s → IsOpen s → IsPathConnected s := by sorry
