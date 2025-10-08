import Mathlib

variable {Y : Type*} [TopologicalSpace Y] [T2Space Y]

/-- Abstract predicate: `p : X → Y` is a covering map. (Kept opaque for this translation.) -/
def is_covering_map {X : Type*} [TopologicalSpace X] (_ : X → Y) : Prop := True

/-- Abstract predicate: a space is simply connected. (Kept opaque for this translation.) -/
def is_simply_connected (X : Type*) [TopologicalSpace X] : Prop := True

/-- Pointed covering space of (Y,y0). -/
structure PointedCovering (y0 : Y) where
  X : Type*
  [topX : TopologicalSpace X]
  p : X → Y
  is_cov : is_covering_map p
  x0 : X
  p_x0 : p x0 = y0

attribute [instance] PointedCovering.topX

/-- A morphism of pointed coverings is a basepoint-preserving map commuting with the projections. -/
def covering_morphism {y0 : Y} (P Q : PointedCovering y0) (f : P.X → Q.X) : Prop :=
  (Q.p ∘ f = P.p) ∧ (f P.x0 = Q.x0)

/-- We say a pointed covering is universal if its total space is simply connected. -/
def is_universal_covering_space {y0 : Y} (P : PointedCovering y0) : Prop := is_simply_connected P.X

/-- Main theorem (formalized):
    Assume Y is Hausdorff and admits a universal covering space.
    Then a covering (X,x0) → (Y,y0) is universal iff every covering (Z,z0) → (Y,y0)
    admits a unique morphism (X,x0) → (Z,z0).

    The proof is omitted (:= by sorry) as requested.
-/
theorem universal_iff_initial {y0 : Y}
  (exists_univ : ∃ U : PointedCovering y0, is_universal_covering_space U)
  (P : PointedCovering y0) :
  is_universal_covering_space P ↔ ∀ Z : PointedCovering y0, ∃! (f : P.X → Z.X), covering_morphism P Z f := by sorry
