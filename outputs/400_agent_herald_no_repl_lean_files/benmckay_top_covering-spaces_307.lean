import Mathlib
open Filter Function Set Metric TopologicalSpace
open scoped Topology

/-- Let G act freely by isometries on a metric space X and suppose each orbit is discrete. Then the quotient map X → X/G is a local isometry and a covering map. -/
theorem quotient_locally_isometric_covering {X : Type _} {G : Type _} [MetricSpace X] [Group G] [MulAction G X]
  (h_isometry : ∀ g : G, Isometry (fun x => g • x)) (h_free : ∀ x g, g • x = x → g = 1)
  (h_discrete : ∀ x, ∃ ε > 0, ∀ g, g ≠ 1 → dist (g • x) x ≥ ε) :
  IsLocalIsometry (Quotient.mk : X → X ⧸ G) ∧ IsCoveringMap (Quotient.mk : X → X ⧸ G) := by sorry
