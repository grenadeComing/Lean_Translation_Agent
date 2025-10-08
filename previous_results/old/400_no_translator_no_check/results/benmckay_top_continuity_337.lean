import Mathlib

open Function Set

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- If f : X → Y is continuous, injective and closed then it is a homeomorphism onto its image. -/
noncomputable def closed_injective_homeo_range (f : X → Y) (hf : Injective f) (hcont : Continuous f) (hclosed : IsClosedMap f) :
  Homeomorph X (Set.range f) := by
  sorry

/-- In particular, if Y is locally compact Hausdorff then any proper injection is a homeomorphism onto its image. -/
noncomputable def proper_injective_homeo_range [LocallyCompactSpace Y] [T2Space Y] (f : X → Y) (hf : Injective f) (hcont : Continuous f) (hproper : IsProperMap f) :
  Homeomorph X (Set.range f) := by
  have h := IsProperMap.isClosedMap hproper
  exact closed_injective_homeo_range f hf hcont h
