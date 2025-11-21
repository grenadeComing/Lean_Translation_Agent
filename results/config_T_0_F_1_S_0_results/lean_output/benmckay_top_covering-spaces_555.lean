import Mathlib

/-- A very small formalization of pointed covering maps. -/
structure PointedCoveringMap (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y] where
  toFun : X → Y
  x0 : X
  y0 : Y
  is_covering : Prop
  map_basepoint : toFun x0 = y0

/-- A covering map p : X → Y is universal if for every pointed covering q : Z → Y there
    exists a unique morphism f : X → Z commuting with the projections and preserving basepoints. -/
def IsUniversalCovering {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (p : PointedCoveringMap X Y) : Prop :=
  ∀ (Z : Type*) [TopologicalSpace Z] (q : PointedCoveringMap Z Y),
    ∃! (f : X → Z), (q.toFun ∘ f = p.toFun) ∧ (f p.x0 = q.x0)

/-- Suppose Y is Hausdorff and admits a universal covering space. Then a covering map
    (X,x0) → (Y,y0) is universal iff every covering map (Z,z0) → (Y,y0) has a unique
    morphism (X,x0) → (Z,z0). -/
theorem universal_covering_iff_unique_morphism {Y : Type*} [TopologicalSpace Y] [T2Space Y]
  (exists_univ : ∃ (U : Type*) (instU : TopologicalSpace U) (pU : PointedCoveringMap U Y), IsUniversalCovering pU)
  {X : Type*} [TopologicalSpace X] (p : PointedCoveringMap X Y) :
  IsUniversalCovering p ↔
    ∀ {Z : Type*} [TopologicalSpace Z] (q : PointedCoveringMap Z Y),
      ∃! (f : X → Z), (q.toFun ∘ f = p.toFun) ∧ (f p.x0 = q.x0) := by
  sorry
