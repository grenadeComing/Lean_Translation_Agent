import Mathlib

variable {X : Type _} [MetricSpace X]

/-- An isometry of a metric space: distance-preserving self-map. -/
def isometry (f : X → X) : Prop := ∀ x y, dist (f x) (f y) = dist x y

/-- An isometry is injective. -/
theorem isometry_injective {f : X → X} (h : isometry f) : Injective f := by sorry

/-- If X is compact and f is an isometry, then f is surjective. -/
theorem isometry_surjective_of_compact {f : X → X} (h : isometry f) [CompactSpace X] : Surjective f := by sorry

/-- Hence such an isometry induces a homeomorphism (a homeomorphism equivalence). -/
noncomputable def isometry_homeomorphism {f : X → X} (h : isometry f) [CompactSpace X] : X ≃ₜ X := by sorry
