import Mathlib

/-- A very small abstract notion of a pointed covering map over a basepoint `y0 : Y`.
    We do not attempt to formalize the full covering-space topology here; `is_covering` is
    a placeholder predicate. -/
structure PointedCovering (Y : Type*) [TopologicalSpace Y] (y0 : Y) : Prop :=
  (X : Type*)
  [TopX : TopologicalSpace X]
  (map : X → Y)
  (is_covering : Prop)
  (point : X)
  (map_point : map point = y0)

/-- A morphism of pointed covering maps over the same basepoint: a map `f : C.X → D.X` which
    preserves basepoints and commutes with the covering projections. -/
structure CoveringMorphism {Y : Type*} [TopologicalSpace Y] {y0 : Y}
  (C D : PointedCovering Y y0) : Prop where
  (arrow : C.X → D.X)
  (commute' : D.map ∘ arrow = C.map)
  (map_point' : arrow C.point = D.point)

/-- We say a pointed covering `C` is universal if for every other pointed covering `D`
    there exists a unique map `f : C.X → D.X` commuting with the projections and sending
    the basepoint to the basepoint. This encodes the usual universal property. -/
def IsUniversalCovering {Y : Type*} [TopologicalSpace Y] {y0 : Y}
  (C : PointedCovering Y y0) : Prop :=
  ∀ (D : PointedCovering Y y0), ∃! (f : C.X → D.X), D.map ∘ f = C.map ∧ f C.point = D.point

/-- Main statement (translation of the informal exercise):
    Suppose `Y` is Hausdorff and admits a universal covering space. Then a pointed covering
    `C` over `(Y,y0)` is universal iff every pointed covering `D` over `(Y,y0)` admits a
    unique morphism from `C` to `D` (i.e. a unique map `C.X → D.X` commuting with the
    projections and preserving basepoints). -/
theorem universal_covering_iff_unique_morphism {Y : Type*} [TopologicalSpace Y] [T2Space Y]
  (y0 : Y) (h_admits : ∃ (U : PointedCovering Y y0), IsUniversalCovering U) :
  ∀ (C : PointedCovering Y y0),
    IsUniversalCovering C ↔ ∀ (D : PointedCovering Y y0), ∃! (f : C.X → D.X), D.map ∘ f = C.map ∧ f C.point = D.point :=
  by sorry
