import Mathlib

/-- Every path connected and locally simply connected topological space X has a universal covering space. -/
axiom PathConnected (X : Type*) : Prop
axiom LocallySimplyConnected (X : Type*) : Prop
axiom CoveringMap {X Y : Type*} (Xtop : TopologicalSpace X) (Ytop : TopologicalSpace Y) (p : X -> Y) : Prop
axiom IsUniversalCover {X Y : Type*} (Xtop : TopologicalSpace X) (Ytop : TopologicalSpace Y) (p : X -> Y) : Prop

theorem exists_universal_cover (X : Type*) (Xtop : TopologicalSpace X)
  (h1 : PathConnected X) (h2 : LocallySimplyConnected X) :
  ∃ (Xtil : Type*) (XtilTop : TopologicalSpace Xtil) (p : Xtil -> X),
    CoveringMap XtilTop Xtop p ∧ IsUniversalCover XtilTop Xtop p := by sorry