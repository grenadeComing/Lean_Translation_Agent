import Mathlib

/-- Let X and Y be topological spaces. If X is compact and Y is Hausdorff and f : X → Y is continuous,
then f is a closed map (it sends closed sets to closed sets). -/
theorem isClosedMap_of_compact_of_t2 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y] {f : X → Y} (hf : Continuous f) : IsClosedMap f := by sorry
