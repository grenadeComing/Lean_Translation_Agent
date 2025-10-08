import Mathlib

/--
Let X be a path connected and locally simply connected topological space, and let Γ be a subgroup
of π₁(X, x₀). There exists a connected covering space p : X_Γ → X together with a point x̃₀ ∈ X_Γ
lying over x₀ such that the induced map p_* : π₁(X_Γ, x̃₀) → π₁(X, x₀) has image Γ. Moreover, X_Γ
is unique up to unique isomorphism of coverings: if q : Y → X is any other connected covering
with a point y₀ over x₀ and q_*(π₁(Y, y₀)) = Γ, then there is a unique isomorphism of coverings
φ : X_Γ ≃ₓ Y with φ(x̃₀) = y₀.

This file gives a Lean4 formulation of that statement. The declaration below is intentionally
non-provable here (ends with `:= by sorry`) and uses common Mathlib-style names for the
relevant objects (CoveringSpace, FundamentalGroup, Subgroup, etc.).
-/

theorem covering_space_exists_and_unique_of_subgroup {
  X : Type _
} [TopologicalSpace X] [PathConnected X] [LocallySimplyConnected X]
  {x0 : X} (Γ : Subgroup (FundamentalGroup X x0)) :
  ∃ (X_Γ : Type _) [TopologicalSpace X_Γ] (p : CoveringSpace X_Γ X) (x̃0 : X_Γ),
    IsConnected X_Γ
    ∧ p.map_point x̃0 = x0
    ∧ (GroupHom.range (p.induced_on_fundamental_group x̃0 : FundamentalGroup X_Γ x̃0 → FundamentalGroup X x0) = Γ)
    ∧ (
      ∀ {Y : Type _} [TopologicalSpace Y] (q : CoveringSpace Y X) (y0 : Y),
        IsConnected Y → q.map_point y0 = x0 →
        (GroupHom.range (q.induced_on_fundamental_group y0) = Γ) →
        ∃! (φ : CoveringIsoOver X X_Γ Y), φ.to_homeomorphism x̃0 = y0
    ) := by sorry
