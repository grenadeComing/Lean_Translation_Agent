import Mathlib

open Metric

/-- If `s` and `t` are subsets of metric spaces `E` and `F` with the subspace (induced)
topologies, then a map `f : s → t` is continuous (preimages of open sets are open) iff it
satisfies the usual ε-δ condition at every point. -/
theorem continuous_subtype_iff_epsilon_delta {E F : Type*} [MetricSpace E] [MetricSpace F]
  {s : Set E} {t : Set F} (f : s → t) :
  Continuous f ↔
    ∀ x : s, ∀ ε > 0, ∃ δ > 0, ∀ y : s, dist (y : E) (x : E) < δ → dist ((f y : F) : F) ((f x : F) : F) < ε :=
by
  sorry
