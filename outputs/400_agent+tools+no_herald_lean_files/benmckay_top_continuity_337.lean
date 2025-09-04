import Mathlib

open Set

/-- A closed injective continuous map is a homeomorphism onto its image. -/
def closed_injective_homeomorph_range {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {f : X → Y} (hf_cont : Continuous f) (hf_closed : IsClosedMap f) (h_inj : Function.Injective f) :
  Homeomorph X (Subtype (range f)) := by sorry

/-- If Y is locally compact Hausdorff, any proper injection into Y is a homeomorphism onto its image. -/
def proper_injective_homeomorph_range {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y] {f : X → Y} (hf_cont : Continuous f) (h_proper : IsProperMap f)
  (h_inj : Function.Injective f) : Homeomorph X (Subtype (range f)) := by sorry
