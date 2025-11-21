import Mathlib

universe u

/-- Let X be a topological space which is path connected and locally simply connected.
Fix a basepoint x0 : X. Let Γ be a subgroup of the fundamental group π1(X, x0).
Then there exists a connected covering space p : X_Γ → X and a point xΓ : X_Γ with p xΓ = x0
such that (p_*)(π1(X_Γ, xΓ)) = Γ. Moreover, if q : Y → X is any other connected covering
with a point y0 : Y with q y0 = x0 and (q_*)(π1(Y, y0)) = Γ, then there is a unique
homeomorphism h : Y ≃ₜ X_Γ with p ∘ h = q and h y0 = xΓ. -/
theorem exists_connected_covering_for_subgroup
  {X : Type u} [TopologicalSpace X] [PathConnectedSpace X] [LocallySimplyConnectedSpace X]
  (x0 : X) (Γ : Subgroup (FundamentalGroup X x0)) :
  ∃ (Y : Type u) [TopologicalSpace Y] (p : Y → X),
    ConnectedSpace Y ∧ IsCovering p ∧ ∃ (y0 : Y),
      p y0 = x0 ∧ Subgroup.map (FundamentalGroup.map p x0) (FundamentalGroup Y y0) = Γ ∧
    (∀ (Z : Type u) [TopologicalSpace Z] (q : Z → X) (hq_conn : ConnectedSpace Z) (hq_cov : IsCovering q)
       (z0 : Z) (hz0 : q z0 = x0)
       (hΓ : Subgroup.map (FundamentalGroup.map q x0) (FundamentalGroup Z z0) = Γ),
       ∃! (h : Z ≃ₜ Y), (p ∘ (h : Z → Y) = q) ∧ (h z0 = y0)) := by sorry