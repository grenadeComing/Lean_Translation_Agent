import Mathlib

/-- If G acts on a metric space X by isometries, the quotient X/G carries the quotient metric
    d([x],[y]) = inf_{g : G} dist (g • x) y and the metric topology agrees with the quotient topology.
    (Statement only; no proof.) -/
theorem quotient_metric_of_isometric_action {X : Type*} [MetricSpace X] {G : Type*} [Group G] [MulAction G X]
  (h_isometry : ∀ g : G, Isometry (fun x => g • x)) :
  ∃ (dbar : Quotient (MulAction.orbitRel G X) → Quotient (MulAction.orbitRel G X) → ℝ)
    (m : MetricSpace (Quotient (MulAction.orbitRel G X))),
    (∀ x y : X, dbar (Quotient.mk x) (Quotient.mk y) = ⨅ (g : G), dist (g • x) y) ∧
    (TopologicalSpace (Quotient (MulAction.orbitRel G X)) =
      TopologicalSpace.coinduced (Quotient.mk : X → Quotient (MulAction.orbitRel G X)) (TopologicalSpace X)) := by sorry
