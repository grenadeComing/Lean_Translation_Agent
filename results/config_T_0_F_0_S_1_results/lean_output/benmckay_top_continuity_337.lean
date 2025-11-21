import Mathlib

/-!
Let Y be a locally compact Hausdorff space. Any closed injective continuous
map f : X → Y is a homeomorphism onto its image. In particular, any proper
injective continuous map f : X → Y is a homeomorphism onto its image.
-/

theorem closed_injective_embedding_of_locally_compact_t2 {X Y : Type*}
  [TopologicalSpace X] [TopologicalSpace Y] [LocallyCompactSpace Y] [T2Space Y]
  {f : X → Y} (hf_cont : Continuous f) (hf_closed : IsClosedMap f) (hf_inj : Function.Injective f) :
  Embedding f := by sorry

theorem proper_injective_embedding_of_locally_compact_t2 {X Y : Type*}
  [TopologicalSpace X] [TopologicalSpace Y] [LocallyCompactSpace Y] [T2Space Y]
  {f : X → Y} (hf_cont : Continuous f)
  (hf_proper : ∀ (K : Set Y), IsCompact K → IsCompact (f ⁻¹' K))
  (hf_inj : Function.Injective f) :
  Embedding f := by sorry