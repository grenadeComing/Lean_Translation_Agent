import Mathlib

/-- Given a group action by isometries on a metric space X, the quotient by the orbit relation
    is metrizable by the quotient metric d(⟦x⟧,⟦y⟧) = inf_{g : Γ} dist (g • x) y, and the resulting metric
    topology agrees with the quotient topology. -/
noncomputable section

variables {Γ X : Type*} [Group Γ] [MulAction Γ X] [MetricSpace X]

/-- The quotient distance defined on representatives. -/
noncomputable def quotient_dist (q1 q2 : Quotient (MulAction.orbitRel Γ X)) : ℝ :=
  Quotient.liftOn₂ q1 q2 (fun x y => Inf (fun g : Γ => dist (g • x) y))
    (by
      -- compatibility on representatives omitted
      admit)

/-- Main statement: existence of a MetricSpace instance on the quotient with the stated distance,
    and equality of the metric topology with the quotient topology. The proof is omitted. -/
theorem quotient_metric_space_of_isometric_action (h_isometries : ∀ g : Γ, Isometry (fun x => g • x)) :
  ∃ (m : MetricSpace (Quotient (MulAction.orbitRel Γ X))),
    (∀ x y : X, dist (Quotient.mk x) (Quotient.mk y) = Inf (fun g : Γ => dist (g • x) y)) ∧
    Quotient.topologicalSpace (MulAction.orbitRel Γ X) = MetricSpace.toTopologicalSpace m := by sorry

end
