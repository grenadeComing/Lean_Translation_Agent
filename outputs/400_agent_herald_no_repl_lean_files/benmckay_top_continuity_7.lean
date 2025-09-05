import Mathlib

variable {α β : Type*} [MetricSpace α] [MetricSpace β]
variable {X : Set α} {Y : Set β}
variable {f : Subtype X → Subtype Y}

/-- If X and Y are subsets of Euclidean (indeed metric) spaces with the subspace topologies,
then a map f : X → Y is continuous (preimages of open sets are open) iff it is continuous
in the usual ε–δ sense. -/
theorem continuous_subtype_iff_eps_delta :
  Continuous f ↔
    ∀ x : Subtype X, ∀ ε > (0 : ℝ), ∃ δ > 0, ∀ y : Subtype X, dist (x : α) (y : α) < δ →
      dist (f x : β) (f y : β) < ε := by sorry
