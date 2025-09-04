import Mathlib

/-- If X and Y are metric spaces (in particular subspaces of Euclidean spaces with the subspace
topologies), then a map f : X → Y is continuous (preimages of open sets are open) iff f is
continuous in the ε–δ sense. -/
theorem continuous_iff_metric {X Y : Type _} [MetricSpace X] [MetricSpace Y] {f : X → Y} :
  Continuous f ↔ (∀ x : X, ∀ ε > 0, ∃ δ > 0, ∀ y : X, dist y x < δ → dist (f y) (f x) < ε) := by sorry
