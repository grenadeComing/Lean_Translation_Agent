import Mathlib

open Set

/-- If f : X → Y is continuous, injective, and a closed map, then f is a homeomorphism onto its image. -/
theorem closed_injective_homeomorphism_range {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  {f : X → Y} (hf : Continuous f) (hi : Injective f) (hclosed : IsClosedMap f) :
  Homeomorph X { y : Y // y ∈ Set.range f } := by sorry

/-- If Y is locally compact Hausdorff, then any proper injection f : X → Y is a homeomorphism onto its image. -/
theorem proper_injective_homeomorphism_range {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y]
  {f : X → Y} (hf : Continuous f) (hi : Injective f) (hproper : IsProperMap f) :
  Homeomorph X { y : Y // y ∈ Set.range f } := by sorry
