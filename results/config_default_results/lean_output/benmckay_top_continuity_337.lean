import Mathlib

/-- Let Y be a locally compact Hausdorff space. Any closed injection f : X → Y is a homeomorphism onto its image. -/
theorem closed_injective_is_homeomorph_range {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y] {f : X → Y} (hf_closed : IsClosedMap f) (hf_inj : Function.Injective f) :
  IsHomeomorph (fun x : X => (⟨f x, Set.mem_range_self x⟩ : ↥(Set.range f))) := by sorry

/-- In particular, any proper injection f : X → Y is a homeomorphism onto its image. -/
theorem proper_injective_is_homeomorph_range {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y] {f : X → Y} (hf_prop : IsProperMap f) (hf_inj : Function.Injective f) :
  IsHomeomorph (fun x : X => (⟨f x, Set.mem_range_self x⟩ : ↥(Set.range f))) := by sorry