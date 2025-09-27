import Mathlib

open Set Function

/-- If f is continuous, injective, and a closed map, then f is a homeomorphism onto its range. -/
def closed_injective_is_homeomorph_on_range {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {f : X → Y} (hf_cont : Continuous f) (hf_inj : Function.Injective f) (hf_closed : IsClosedMap f) :
  X ≃ₜ Set.range f := by
  sorry

/-- If Y is locally compact Hausdorff and f is continuous, injective, and proper, then f is a homeomorphism onto its range. -/
def proper_injective_is_homeomorph_on_range {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space Y] [LocallyCompactSpace Y] {f : X → Y}
  (hf_cont : Continuous f) (hf_inj : Function.Injective f) (hf_prop : IsProperMap f) :
  X ≃ₜ Set.range f := by
  sorry
