import Mathlib

open Set

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- If f : X → Y is continuous and there is a compact K ⊆ X with f '' K = univ, then Y is compact. -/
theorem compact_of_compact_image (f : X → Y) (hf : Continuous f) (K : Set X) (hK : IsCompact K)
  (himg : f '' K = (univ : Set Y)) : IsCompact (univ : Set Y) := by sorry
