import Mathlib

/--
Let X and Y be topological spaces, Y is locally compact and Hausdorff, and f : X → Y is a closed embedding.
Prove that f is a homeomorphism onto its image.
-/
lemma benmckay_top_continuity_276
  {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y]
  (f : X → Y) (hf : ClosedEmbedding f) :
  X ≃ₜ { y : Y // y ∈ Set.range f } := by
  simpa using hf.homeomorph
