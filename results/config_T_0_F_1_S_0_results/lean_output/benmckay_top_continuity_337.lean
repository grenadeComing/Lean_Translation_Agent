import Mathlib

/-!
Let Y be a locally compact Hausdorff space. Prove that any closed injection f : X → Y is a
homeomorphism onto its image. In particular, any proper injection f : X → Y is a homeomorphism onto its image.

This file contains only the statements (no proofs).
-/

open Set

theorem closed_injective_is_homeomorphism_onto_range {X Y : Type*} [TopologicalSpace X]
    [TopologicalSpace Y] [LocallyCompactSpace Y] [T2Space Y] {f : X → Y}
    (hf_cont : Continuous f) (hf_closed : IsClosedMap f) (hf_inj : Function.Injective f) :
    ∃ (h : Homeomorph X (↥(Set.range f))),
  True := by sorry

theorem proper_injective_is_homeomorphism_onto_range {X Y : Type*} [TopologicalSpace X]
    [TopologicalSpace Y] [LocallyCompactSpace Y] [T2Space Y] {f : X → Y}
    (hf_prop : IsProperMap f) (hf_inj : Function.Injective f) :
    ∃ (h : Homeomorph X (↥(Set.range f))),
  True := by sorry
