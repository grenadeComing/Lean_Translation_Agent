import Mathlib

/-!
Let Y be a locally compact Hausdorff space and f : X → Y a closed injection.
We state that f is an embedding (a homeomorphism onto its image).
-/

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y]

theorem benmckay_top_continuity_276 (f : X → Y) (hf : Continuous f)
  (hinj : Function.Injective f) (hclosed : IsClosedMap f) : Embedding f := by sorry
