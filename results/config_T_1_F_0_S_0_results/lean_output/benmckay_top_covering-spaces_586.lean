import Mathlib

/-- Every path connected and locally simply connected topological space X has a universal covering space \tilde{X} \to X. -/
theorem has_universal_cover_of_path_connected_locally_simply_connected (X : Type*) [TopologicalSpace X]
  [IsPathConnected X] [IsLocallySimplyConnected X] : HasUniversalCover X := by sorry