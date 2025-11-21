import Mathlib

/-- Let f : X → Y be a continuous map to a Hausdorff space Y. Prove that f is proper if and only if both (a) every fiber f^{-1}(y) is compact, and (b) f is a closed map. -/
theorem is_proper_map_iff_compact_fibers_and_closed_map {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space Y] {f : X → Y} (hf : Continuous f) :
  IsProperMap f ↔ (∀ y : Y, IsCompact (f ⁻¹' ({y} : Set Y))) ∧ IsClosedMap f := by sorry
