import Mathlib

universe u v

/-- Let X be a metric space and Γ a group acting on X by isometries. Define the orbit relation
s = MulAction.orbitRel Γ X and consider the quotient Q = Quotient s. Define a function

  dist_Q (Quotient.mk s x) (Quotient.mk s y) = ⨅ (g : Γ), dist (g • x) y.

This theorem states that this function is well-defined and induces a metric on Q whose
metric topology agrees with the quotient topology. Proof omitted. -/
theorem quotient_metric_space_of_isometric_action {X : Type u} [MetricSpace X]
  {Γ : Type v} [Group Γ] [MulAction Γ X]
  (h_isometry : ∀ g : Γ, Isometry (fun x => g • x)) :
  ∃ (d : Quotient (MulAction.orbitRel Γ X) → Quotient (MulAction.orbitRel Γ X) → ℝ)
    (inst : MetricSpace (Quotient (MulAction.orbitRel Γ X))),
    (∀ x y, d (Quotient.mk (MulAction.orbitRel Γ X) x) (Quotient.mk (MulAction.orbitRel Γ X) y) = ⨅ (g : Γ), dist (g • x) y)
    ∧ (∀ U : Set (Quotient (MulAction.orbitRel Γ X)), IsOpen U ↔ IsOpen ((Quotient.mk (MulAction.orbitRel Γ X)) ⁻¹' U)) := by
  sorry
