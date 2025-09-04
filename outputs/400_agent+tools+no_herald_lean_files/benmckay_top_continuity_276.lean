import Mathlib

open Function Set

/-!
Let Y be a locally compact Hausdorff space and f : X → Y a closed injection.
Prove that f is a homeomorphism onto its image.
-/

def closed_injective_continuous.homeomorph_range {X Y : Type*} [TopologicalSpace X]
  [TopologicalSpace Y] [LocallyCompactSpace Y] [T2Space Y] {f : X → Y}
  (hclosed : IsClosedMap f) (hcont : Continuous f) (hinj : Injective f) :
  Homeomorph X (↥(range f)) := by sorry
