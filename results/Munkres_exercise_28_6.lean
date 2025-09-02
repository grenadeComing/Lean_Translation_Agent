import Mathlib

/-- Let (X, d) be a metric space. A map f : X → X is an isometry if it preserves distances.
    If f is an isometry and X is compact, then f is bijective and hence a homeomorphism. -/
theorem isometry_on_compact_bijective_homeomorph {X : Type*} [MetricSpace X] [CompactSpace X]
  {f : X → X} (h : ∀ x y : X, dist (f x) (f y) = dist x y) :
  Function.Bijective f ∧ ∃ (φ : Homeomorph X X), (φ.toEquiv : X ≃ X).toFun = f := by sorry
