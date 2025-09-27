import Mathlib

/--
Let (X, d) be a metric space. If f : X → X satisfies d (f x) (f y) = d x y for all x y, then f is an isometry.
If f is an isometry and X is compact, then f is bijective and hence a homeomorphism.
-/

theorem isometry_on_compact_bijective {X : Type _} [MetricSpace X] [CompactSpace X]
  (f : X → X) (hf : Isometry f) : Function.Bijective f := by
  -- proof omitted
  sorry

def isometry_on_compact_homeomorph {X : Type _} [MetricSpace X] [CompactSpace X]
  (f : X → X) (hf : Isometry f) : X ≃ₜ X := by
  -- proof omitted
  sorry
