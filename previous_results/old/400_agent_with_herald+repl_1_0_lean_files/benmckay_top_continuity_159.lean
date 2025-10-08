import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [CompactSpace X] [T2Space Y]

/-- A continuous bijection from a compact space to a Hausdorff (T2) space has a continuous inverse. -/
theorem continuous_bijective_compact_to_t2_has_continuous_inverse (f : X → Y) (hf : Continuous f) (hf_bij : Function.Bijective f) :
  ∃ g : Y → X, Continuous g ∧ Function.LeftInverse g f ∧ Function.RightInverse g f := by
  sorry
