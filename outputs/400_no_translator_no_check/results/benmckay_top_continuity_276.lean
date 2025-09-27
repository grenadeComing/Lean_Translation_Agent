import Mathlib

open Set

/-- If f : X → Y is continuous, injective, and a closed map, then f is a homeomorphism onto its range. -/
def closed_injective_homeomorph_range {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf_cont : Continuous f) (hf_inj : Function.Injective f) (hf_closed : IsClosedMap f) :
  Homeomorph X (Subtype (range f)) := by sorry
