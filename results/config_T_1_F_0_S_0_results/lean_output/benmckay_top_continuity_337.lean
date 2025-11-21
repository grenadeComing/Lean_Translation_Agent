import Mathlib

/-- Let Y be a locally compact Hausdorff space. Any closed continuous injective map f : X → Y
    is a homeomorphism onto its image (equivalently, an embedding). -/
theorem closed_injective_homeomorph_on_range {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space Y] [LocallyCompactSpace Y] {f : X → Y} (hf : Continuous f) (hclosed : IsClosedMap f)
  (hinj : Function.Injective f) : Embedding f := by sorry

/-- In particular, if f is proper (preimages of compact sets are compact) and injective, then f
    is a homeomorphism onto its image. -/
theorem proper_injective_homeomorph_on_range {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space Y] [LocallyCompactSpace Y] {f : X → Y} (hf : Continuous f)
  (hproper : ∀ K : Set Y, IsCompact K → IsCompact (f ⁻¹' K)) (hinj : Function.Injective f) : Embedding f := by sorry