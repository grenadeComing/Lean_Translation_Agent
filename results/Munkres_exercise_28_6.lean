import Mathlib

variable {X : Type _} [MetricSpace X] [CompactSpace X]

theorem isometry_injective {f : X → X} (h : Isometry f) : Function.Injective f := by
  sorry

theorem isometry_bijective_of_compact {f : X → X} (h : Isometry f) : Function.Bijective f := by
  sorry

def isometry_homeomorph_of_compact {f : X → X} (h : Isometry f) : X ≃ₜ X := by
  sorry
