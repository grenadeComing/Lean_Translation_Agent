import Mathlib

open Set

theorem benmckay_top_continuity_287 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf : Continuous f) [T2Space Y] :
  IsProperMap f ↔ ( (∀ y, IsCompact (f ⁻¹' ({y} : Set Y))) ∧ IsClosedMap f ) := by sorry
