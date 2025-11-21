import Mathlib

/-!
Let E and F be metric spaces and X ⊆ E, Y ⊆ F. Consider the subtypes (Subtype X) and (Subtype Y)
with the subspace topology. A map f : Subtype X → Subtype Y is continuous (as a map of topological
spaces) iff it is continuous in the ε-δ metric sense.
-/

theorem top_continuity_iff_metric_continuity {E F : Type*} [MetricSpace E] [MetricSpace F]
  {X : Set E} {Y : Set F} (f : Subtype X → Subtype Y) :
  Continuous f ↔
    ∀ x : Subtype X, ∀ ε > 0, ∃ δ > 0, ∀ x' : Subtype X, dist x' x < δ → dist (f x') (f x) < ε := by sorry
