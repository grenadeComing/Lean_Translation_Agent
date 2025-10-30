import Mathlib

/-
Translation: Let Y be a locally compact Hausdorff space. Prove that any closed injection f : X → Y is a homeomorphism onto its image. In particular, any proper injection f : X → Y is a homeomorphism onto its image.
-/

def closed_injective_homeomorph_to_image
  {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) [LocallyCompactSpace Y]
  (hf_inj : Function.Injective f) (hf_closed : IsClosedMap f) :
  Homeomorph X (Subtype fun y => y ∈ Set.range f) := by
  sorry
