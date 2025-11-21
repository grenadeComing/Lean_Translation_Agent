import Mathlib

variable (Γ : Type*) [Group Γ]
variable (X : Type*) [MetricSpace X] [MulAction Γ X] [IsometricSMul Γ X]

/-- For a group Γ acting on a metric space X by isometries, there exists a metric space
structure on the quotient Q = X / (orbit relation) with distance given on representatives by
d([x],[y]) = inf_{g : Γ} dist (g • x) y. -/
theorem quotient_space_has_quotient_metric :
  ∃ (m : MetricSpace (Quotient (MulAction.orbitRel Γ X))),
    ∀ x y : X,
      @dist _ m (Quotient.mk (r := MulAction.orbitRel Γ X) x)
              (Quotient.mk y) = ⨅ g : Γ, dist (g • x) y := by sorry