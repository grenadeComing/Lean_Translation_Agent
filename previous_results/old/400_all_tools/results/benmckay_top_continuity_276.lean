import Mathlib

/-- Let Y be a locally compact Hausdorff space and f : X → Y a closed injection.
    Then f is a homeomorphism onto its image. -/
noncomputable def closed_injective_homeomorph_range {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y] {f : X → Y}
  (hf : Continuous f) (h_inj : Function.Injective f) (h_closed : IsClosedMap f) :
  X ≃ₜ Set.range f := by
  sorry
