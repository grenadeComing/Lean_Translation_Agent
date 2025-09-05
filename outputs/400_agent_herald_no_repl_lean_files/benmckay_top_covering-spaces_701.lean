import Mathlib

/--
If p : ℝ → Y is a covering map and Y is connected and locally path-connected,
then the base space Y is homeomorphic to either ℝ or S^1.
(This file contains only the statement; the proof is omitted.)
-/
theorem spaces_with_R_as_covering (Y : Type _) [TopologicalSpace Y] [ConnectedSpace Y] [LocallyPathConnected Y]
  (p : ℝ → Y) (h : IsCovering p) :
  (Nonempty (Homeomorph Y ℝ)) ∨ (Nonempty (Homeomorph Y Circle)) := by sorry
