import Mathlib

universe u v w

/-- Opaque predicate: `CoveringSpace X tX Y tY p` means `p : Y -> X` is a covering of `X`. -/
constant CoveringSpace (X : Type u) (tX : TopologicalSpace X) (Y : Type v) (tY : TopologicalSpace Y) (p : Y → X) : Prop

/-- Opaque description of the image of the induced map p_* : π₁(Y,y0) → π₁(X,x0). -/
constant FundamentalImage (X : Type u) (tX : TopologicalSpace X) (x0 : X)
  (Y : Type v) (tY : TopologicalSpace Y) (p : Y → X) (y0 : Y) : Subgroup (FundamentalGroup X x0)

/-- Opaque type of isomorphisms of coverings (commuting homeomorphisms over the base). -/
constant IsomorphismOfCoverings (X : Type u) (tX : TopologicalSpace X)
  (Y1 : Type v) (tY1 : TopologicalSpace Y1) (Y2 : Type v) (tY2 : TopologicalSpace Y2)
  (p1 : Y1 → X) (p2 : Y2 → X) : Type w

/-- Existence and uniqueness (up to unique isomorphism) of the covering space corresponding to a subgroup Γ ≤ π₁(X,x0).

    Hypotheses:
    - X is path connected (expressed here via `IsPathConnected (univ : Set X)`).
    - X is locally simply connected (left as an abstract hypothesis `locally_simply_connected`).

    Conclusion: there exists a connected covering p : X_Γ → X whose induced fundamental-group
    image equals `Γ`, and this covering is unique up to a unique isomorphism of coverings.
-/
theorem covering_space_exists_unique (X : Type u) (tX : TopologicalSpace X) (x0 : X)
  (Γ : Subgroup (FundamentalGroup X x0))
  (path_connected : IsPathConnected (univ : Set X))
  (locally_simply_connected : Prop) :
  ∃ (Y : Type v) (tY : TopologicalSpace Y) (p : Y → X) (y0 : Y),
    CoveringSpace X tX Y tY p ∧ IsPathConnected (univ : Set Y) ∧
    FundamentalImage X tX x0 Y tY p y0 = Γ ∧
    (∀ (Z : Type v) (tZ : TopologicalSpace Z) (q : Z → X) (z0 : Z),
       CoveringSpace X tX Z tZ q → IsPathConnected (univ : Set Z) →
       FundamentalImage X tX x0 Z tZ q z0 = Γ →
       ∃! (iso : IsomorphismOfCoverings X tX Y tY Z tZ p q), True) := by sorry
