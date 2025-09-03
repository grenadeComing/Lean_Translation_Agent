import Mathlib

/-!
Let (X, d) be a metric space. If f : X → X satisfies d (f x) (f y) = d x y for all x y, then f is
called an isometry. Show that if f is an isometry and X is compact, then f is bijective and hence a
homeomorphism.
-/

variable {X : Type*} [MetricSpace X] (f : X → X) (hf : Isometry f) [CompactSpace X]

/-- An isometry on a compact metric space is bijective. -/
theorem isometry_on_compact_bijective : Function.Bijective f := by sorry

/-- Hence it is a homeomorphism. -/
def isometry_on_compact_homeomorph : X ≃ₜ X := by sorry
