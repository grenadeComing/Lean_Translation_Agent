import Mathlib

/-- Minimal formalization for pointed covering maps. -/
structure PointedCovering (X : Type _) (Y : Type _) [TopologicalSpace X] [TopologicalSpace Y]
  (x0 : X) (y0 : Y) where
  toFun : X → Y
  map_base : toFun x0 = y0
  is_covering : Prop

structure PointedCoveringMorphism {X Z Y : Type _} [TopologicalSpace X] [TopologicalSpace Z] [TopologicalSpace Y]
  {x0 : X} {z0 : Z} {y0 : Y}
  (p : PointedCovering X Y x0 y0) (q : PointedCovering Z Y z0 y0) where
  toFun : X → Z
  map_base : toFun x0 = z0
  commute : q.toFun ∘ toFun = p.toFun

def IsIso {X Z Y : Type _} [TopologicalSpace X] [TopologicalSpace Z] [TopologicalSpace Y]
  {x0 : X} {z0 : Z} {y0 : Y}
  (p : PointedCovering X Y x0 y0) (q : PointedCovering Z Y z0 y0) : Prop :=
  Nonempty (PointedCoveringMorphism p q) ∧ Nonempty (PointedCoveringMorphism q p)

/-- Suppose Y is Hausdorff and admits a universal covering space `s`.
    Then a covering `p` is universal (isomorphic to `s`) iff for every covering `q`
    there is a unique morphism from `p` to `q`. -/
theorem universal_covering_characterization
  {Y : Type _} [TopologicalSpace Y] [T2Space Y] {y0 : Y}
  {U : Type _} [TopologicalSpace U] (u0 : U)
  (s : PointedCovering U Y u0 y0)
  (h_s_univ : ∀ {Z : Type _} [TopologicalSpace Z] (z0 : Z) (q : PointedCovering Z Y z0 y0),
    ∃! (f : PointedCoveringMorphism s q), True)
  {X : Type _} [TopologicalSpace X] (x0 : X)
  (p : PointedCovering X Y x0 y0) :
  (IsIso p s) ↔
  (∀ {Z : Type _} [TopologicalSpace Z] (z0 : Z) (q : PointedCovering Z Y z0 y0),
    ∃! (f : PointedCoveringMorphism p q), True) := by
  sorry
