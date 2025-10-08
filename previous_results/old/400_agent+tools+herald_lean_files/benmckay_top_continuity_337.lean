import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y]

/-- If Y is locally compact Hausdorff, any closed injective continuous map f : X → Y
is a homeomorphism onto its image. -/
def closed_injective_is_homeomorphism_of_locally_compact_t2 (f : X → Y)
  (hf_closed : IsClosedMap f) (hf_inj : Function.Injective f) (hf_cont : Continuous f) :
  Homeomorph X (Set.range f) := by sorry

/-- In particular, any proper injective continuous map into a locally compact Hausdorff
space is a homeomorphism onto its image. -/
def proper_injective_is_homeomorphism_of_locally_compact_t2 (f : X → Y)
  (hf_proper : IsProperMap f) (hf_inj : Function.Injective f) (hf_cont : Continuous f) :
  Homeomorph X (Set.range f) := by sorry
