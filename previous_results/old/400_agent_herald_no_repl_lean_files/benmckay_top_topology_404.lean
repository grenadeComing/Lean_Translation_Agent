import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y]

/-- If f : X → Y is a continuous bijection, with X compact and Y Hausdorff, then the inverse
    map f⁻¹ : Y → X is continuous. -/
theorem continuous_inverse_of_continuous_bijective_compact_domain (f : X → Y)
  (hf : Continuous f) (hb : Bijective f) :
  Continuous (((Homeomorph.of_continuous_bijective f hf hb).symm : Y → X)) := by sorry
