import Mathlib

universe u v

/-- A minimal encoding of a covering map between topological spaces.
    This file focuses on the universal property statement rather than
    a full formalization of covering spaces. -/
structure CoveringMap (X : Type u) (Y : Type v) : Type (max u v) where
  to_fun     : X → Y
  is_covering : Prop
  basepoint  : X
  targetpoint : Y
  is_universal : Prop

/-- A morphism between pointed covering maps: a map between the total spaces
    preserving basepoints and commuting with the projection to the base. -/
structure Morphism {X : Type u} {Y : Type v} (f : CoveringMap X Y) {Z : Type u} (g : CoveringMap Z Y) : Type (max u v) where
  map : X → Z
  map_basepoint : map f.basepoint = g.basepoint
  commute : g.to_fun ∘ map = f.to_fun

/-- Translation of the proposition:
    Suppose Y is a Hausdorff topological space which admits a universal covering space.
    Then a covering map (X,x0) → (Y,y0) is universal iff every covering map (Z,z0) → (Y,y0)
    has a unique morphism (X,x0) → (Z,z0).

    We do not build the topology/Hausdorff/admits_universal assumptions in detail here;
    the statement below records the universal property equivalently in our minimal encoding.
-/
theorem universal_covering_map_iff_unique_factor
  {X : Type u} {Y : Type v}
  (f : CoveringMap X Y) :
  f.is_universal ↔ (∀ {Z : Type u} (g : CoveringMap Z Y), ∃! (h : Morphism f g), True) := by
  sorry
