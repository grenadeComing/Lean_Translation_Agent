import Mathlib

/-!
Statement (translated into Lean4-style declaration):

Let X be a path connected and locally simply connected topological space, and fix a basepoint x0 : X.
For any subgroup Γ of the fundamental group π₁(X, x0) there exists a connected covering space
p : X_Γ → X with a chosen basepoint y0 : X_Γ such that the image of the induced map on
fundamental groups (p_*) equals Γ. Moreover this covering is unique up to unique isomorphism of
coverings: if q : Y → X is any other connected covering with the same property then there is a
unique homeomorphism (equivalently covering isomorphism) e : Y ≃ X_Γ with p ∘ e = q.

Note: This file records the statement only (no proof), leaving the proof as `sorry`.
-/

open Topology

theorem exists_connected_covering_space_of_subgroup {X : Type*} [TopologicalSpace X]
  {x0 : X} (hpath : IsPathConnected X) (hloc : LocallySimplyConnected X)
  (Γ : Subgroup (FundamentalGroup X x0)) :
  ∃ (Y : Type*) [TopologicalSpace Y] (p : Y → X) (_ : CoveringSpace p) (y0 : Y),
    IsPathConnected Y ∧
    -- the image of the induced map on fundamental groups equals Γ
    Subgroup.map (FundamentalGroup.map (p) y0) (FundamentalGroup Y y0) = Γ ∧
    -- uniqueness up to unique isomorphism of coverings
    (∀ (Z : Type*) [TopologicalSpace Z] (q : Z → X) (_ : CoveringSpace q) (z0 : Z),
      IsPathConnected Z →
      Subgroup.map (FundamentalGroup.map (q) z0) (FundamentalGroup Z z0) = Γ →
      ∃! (e : Z ≃ Y) (he : p ∘ e.toEquiv.toFun = q), True) := by sorry