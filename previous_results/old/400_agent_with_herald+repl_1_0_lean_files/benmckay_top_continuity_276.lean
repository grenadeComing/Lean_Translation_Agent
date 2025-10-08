import Mathlib

/-- Let Y be a locally compact Hausdorff space and f : X → Y a closed injection.
Then f is a homeomorphism onto its image. -/
theorem closed_injective_closed_map_into_locally_compact_t2_homeomorph_range {X Y : Type*}
  [TopologicalSpace X] [TopologicalSpace Y] [LocallyCompactSpace Y] [T2Space Y]
  {f : X → Y} (hf_cont : Continuous f) (hf_closed : IsClosedMap f) (hf_inj : Injective f) :
  Homeomorph X (Subtype (Set.range f)) := by
  -- The proof is omitted.
  sorry
