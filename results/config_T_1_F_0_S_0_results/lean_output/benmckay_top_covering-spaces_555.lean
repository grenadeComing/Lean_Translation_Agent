import Mathlib

universe u v

variable {Y : Type u} [TopologicalSpace Y] [T2Space Y] (y0 : Y)

/-- A very small abstract definition of a pointed covering of (Y,y0).
This is intentionally minimal: `is_covering` is left as a `Prop` placeholder
so that the statement of the universal property can be expressed without
committing to a particular development of covering spaces in Mathlib. -/
structure PointedCovering where
  X : Type v
  topX : TopologicalSpace X
  x0 : X
  p : X → Y
  is_covering : Prop
  p_x0 : p x0 = y0

/-- A morphism of pointed coverings: a map of total spaces preserving basepoints
and commuting with the projection to Y. Continuity / local homeomorphism
properties are omitted and treated as part of the `is_covering` predicates. -/
structure PointedCoveringMorphism (C D : PointedCovering) where
  f : C.X → D.X
  f_x0 : f C.x0 = D.x0
  comm : D.p ∘ f = C.p

/-- The universal property one expects of a universal covering: C is a covering and
for every other covering Z there exists a unique map of pointed coverings from C to Z.
We express the uniqueness as `∃! (f : C.X → Z.X), ...` on the underlying maps; this
is equivalent to uniqueness of the induced pointed-covering morphism. -/
def is_universal (C : PointedCovering) : Prop :=
  C.is_covering ∧ ∀ (Z : PointedCovering), Z.is_covering → ∃! (f : C.X → Z.X),
    (f C.x0 = Z.x0) ∧ (Z.p ∘ f = C.p)

/-- Main statement: assuming Y admits a universal cover, a covering (X,x0) → (Y,y0)
is universal iff every covering (Z,z0) → (Y,y0) admits a unique morphism from (X,x0)
(as maps of total spaces commuting with the projections and preserving basepoints). -/
theorem universal_covering_iff_unique_morphism
  (admits_universal : ∃ C : PointedCovering, is_universal C) :
  ∀ (C : PointedCovering), C.is_covering →
    (is_universal C) ↔ (∀ (Z : PointedCovering), Z.is_covering → ∃! (f : C.X → Z.X),
      (f C.x0 = Z.x0) ∧ (Z.p ∘ f = C.p)) := by sorry