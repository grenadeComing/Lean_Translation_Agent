import Mathlib

open Function Set

def closed_injective_continuous_homeomorph_range {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space Y] [LocallyCompactSpace Y] {f : X → Y} (hf_cont : Continuous f) (hf_inj : Injective f)
  (hf_closed : IsClosedMap f) : Homeomorph X (range f) := by sorry
