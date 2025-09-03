import Mathlib
open Set Filter Topology TopologicalSpace

/-- Show that every locally compact Hausdorff space is regular. -/
theorem regular_of_locallyCompact_hausdorff {X : Type*} [TopologicalSpace X]
    [LocallyCompactSpace X] [T2Space X] : RegularSpace X := by sorry
