import Mathlib

universe u v

/-- Every path connected and locally simply connected topological space X has a universal covering space. -/
theorem exists_universal_cover_of_path_connected_locally_simply_connected (X : Type u)
  [TopologicalSpace X] [PathConnectedSpace X] [LocallySimplyConnectedSpace X] :
  ∃ (Y : Type v) (p : Y → X) (_ : TopologicalSpace Y),
    CoveringSpace p ∧ CoveringSpace.IsUniversalCover p := by sorry
