import Mathlib

/-- Let Y be a locally compact Hausdorff space and f : X → Y a closed injection. Then f is a homeomorphism onto its image. -/
theorem is_embedding_of_closed_injective_locally_compact_t2 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space Y] [LocallyCompactSpace Y] (f : X → Y) (hf_cont : Continuous f) (hf_inj : Injective f) (hf_closed : IsClosedMap f) :
  IsEmbedding f := by sorry
