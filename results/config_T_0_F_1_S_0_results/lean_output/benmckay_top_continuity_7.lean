import Mathlib

/-!
A map f : s → t between subsets of metric (Euclidean) spaces, with the subspace
topologies, is continuous (preimages of open sets are open) iff it satisfies the
usual ε-δ definition of continuity.
-/

theorem benmckay_top_continuity_7 {α β : Type*} [MetricSpace α] [MetricSpace β]
  {s : Set α} {t : Set β} {f : s → t} :
  Continuous f ↔
    ∀ x : s, ∀ ε > (0 : ℝ), ∃ δ > (0 : ℝ), ∀ y : s, dist y x < δ → dist (f y) (f x) < ε := by
  sorry
