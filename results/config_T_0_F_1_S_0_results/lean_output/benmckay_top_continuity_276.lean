import Mathlib

/-- If Y is a locally compact Hausdorff space and f : X → Y is a closed injection,
then f is a homeomorphism onto its image (range f). -/
def closed_injective_homeomorph_onto_range (X Y : Type _) [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y] (f : X → Y) (hf_inj : Function.Injective f) (hf_closed : IsClosedMap f) :
  Homeomorph X (Set.range f) := by sorry
