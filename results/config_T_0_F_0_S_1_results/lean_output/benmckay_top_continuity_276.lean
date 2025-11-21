import Mathlib

/-!
Let Y be a locally compact Hausdorff space and f : X → Y a closed injection.
We state that f is a homeomorphism onto its image.  (We include continuity of f as a
hypothesis; without continuity the statement is false.)
-/

theorem benmckay_top_continuity_276 {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y] {f : X → Y} (hf : Injective f) (hclosed : IsClosedMap f)
  (hcont : Continuous f) : X ≃ₜ range f := by sorry
