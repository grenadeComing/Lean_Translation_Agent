import Mathlib

universe u

/-- Exercise: Let X be completely regular. Show that X is connected iff the Stone-Čech compactification of X is connected. -/
theorem connected_iff_stone_cech_connected (X : Type u) [TopologicalSpace X] [CompletelyRegularSpace X] :
  ConnectedSpace X ↔ ConnectedSpace (StoneCech X) := by sorry
