import Mathlib

universe u

/-- Abstract statement: Y is a fixed base type. CoveringMap and IsUniversalCover are
    predicates parametrized by the total space X, a chosen basepoint x0, and the projection p : X → Y.
    We assume (for the statement) that Y admits a universal cover. -/

theorem universal_cover_iff_unique_lift {Y : Type u}
  (CoveringMap : ∀ (X : Type u) (x0 : X) (p : X → Y), Prop)
  (IsUniversalCover : ∀ (X : Type u) (x0 : X) (p : X → Y), Prop)
  (admits_universal_cover : Prop) :
  ∀ {X : Type u} (x0 : X) (p : X → Y),
    CoveringMap X x0 p →
    (IsUniversalCover X x0 p ↔
      ∀ {Z : Type u} (z0 : Z) (q : Z → Y),
        CoveringMap Z z0 q →
        ∃! (f : X → Z), f x0 = z0 ∧ ∀ x : X, q (f x) = p x) := by
  sorry
