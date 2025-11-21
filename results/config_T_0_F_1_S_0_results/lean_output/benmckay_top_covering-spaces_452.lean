import Mathlib

universe u

variable {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
variable [PathConnectedSpace X] [PathConnectedSpace Y]
variable [T2Space X] [T2Space Y]

/-- Abstract predicate: f is a covering map. -/
axiom IsCoveringMap : (X → Y) → Prop

/-- Induced map on fundamental groups for a map f with basepoints x0,y0. -/
axiom fundamental_group_map : (f : X → Y) → (x0 : X) → (y0 : Y) →
  FundamentalGroup X x0 → FundamentalGroup Y y0

/-- Abstract quotient of a group-like type G by a subset H. -/
axiom QuotientGroup : (G : Type u) → (H : Set G) → Type u

/-- If X and Y are path connected Hausdorff spaces and f : X → Y is a covering map
with y0 = f x0, then there exists a bijection between the quotient
π₁(Y,y0) / f_* π₁(X,x0) and the fibre { x : X // f x = y0 }.
-/
theorem benmckay_top_covering_spaces_452
  {f : X → Y} (x0 : X) (y0 : Y) (hf : IsCoveringMap f) (hy : y0 = f x0) :
  ∃ (g : QuotientGroup (FundamentalGroup Y y0)
                          (Set.range (fundamental_group_map f x0 y0)) →
            { x : X // f x = y0 }),
    Function.Bijective g := by sorry
