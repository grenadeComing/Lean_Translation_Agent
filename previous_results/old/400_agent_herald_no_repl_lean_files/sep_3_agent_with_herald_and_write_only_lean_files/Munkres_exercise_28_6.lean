import Mathlib

/-!
# Exercise (Munkres 28.6) — isometries of compact metric spaces

Let (X, d) be a metric space. A map f : X → X with

  dist (f x) (f y) = dist x y

for all x, y ∈ X is called an isometry. Show that if f is an isometry and X is
compact, then f is bijective and hence a homeomorphism.

We state the standard lemmas below. Proofs are omitted (:= by sorry).
-/

variable {X : Type*} [MetricSpace X]

/-- An isometry of a metric space X (into itself). -/
def isometry (f : X → X) : Prop := ∀ x y, dist (f x) (f y) = dist x y

/-- An isometry is injective. -/
theorem isometry.injective {f : X → X} (h : isometry f) : Function.Injective f := by sorry

/-- If X is compact and f is an isometry X → X, then f is surjective. -/
theorem isometry.surjective_of_compact {f : X → X} (h : isometry f) [CompactSpace X] : Function.Surjective f := by sorry

/-- Combining the two previous facts, an isometry of a compact metric space is
bijective and (as it is continuous) a homeomorphism onto X. -/
theorem isometry.bijective_and_continuous_of_compact {f : X → X} (h : isometry f) [CompactSpace X] : Function.Bijective f ∧ Continuous f := by sorry

/- Notes:
  * The injectivity proof is immediate from dist (f x) (f y) = dist x y.
  * The surjectivity uses compactness to rule out a proper isometric embedding
    of X into itself (one standard proof produces an infinite r-separated
    sequence contradicting total boundedness).
  * Since metric spaces are Hausdorff, a continuous bijection from a compact
    space to a Hausdorff space has continuous inverse, hence is a homeomorphism.
-/
