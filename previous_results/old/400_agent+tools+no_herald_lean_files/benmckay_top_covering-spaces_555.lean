import Mathlib

universe u

variable {Y : Type u} [TopologicalSpace Y]

constant BasedCovering : ∀ (X : Type u) (x0 : X), Prop
constant UniversalCover : ∀ (X : Type u) (x0 : X), Prop
constant CoveringMorphism : ∀ (X : Type u) (x0 : X) (Z : Type u) (z0 : Z), Type u

constant Y_is_Hausdorff : Prop
constant Y_has_universal_covering : Prop

theorem universal_covering_iff_lifting_property
  (hY : Y_is_Hausdorff) (hYuniv : Y_has_universal_covering) :
  ∀ {X : Type u} (x0 : X), BasedCovering X x0 →
    (UniversalCover X x0 ↔ ∀ {Z : Type u} (z0 : Z), BasedCovering Z z0 → ∃! (f : CoveringMorphism X x0 Z z0), True) :=
by
  intros X x0 h
  exact by sorry
