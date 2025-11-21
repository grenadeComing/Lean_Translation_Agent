import Mathlib

variable {X : Type*} [TopologicalSpace X]

/-- Predicates for the hypotheses: Hausdorff, path connected, locally simply connected. -/
constant IsHausdorff (X : Type*) [TopologicalSpace X] : Prop
constant IsPathConnected (X : Type*) [TopologicalSpace X] : Prop
constant IsLocallySimplyConnected (X : Type*) [TopologicalSpace X] : Prop

/-- The universal covering space of X (abstract). -/
constant UniversalCover (X : Type*) [TopologicalSpace X] : Type*

/-- The deck transformation group of a given cover (abstract). -/
constant DeckTransformationGroup (uc : Type*) : Type*

/-- The fundamental group π₁(X) (abstract). -/
constant FundamentalGroup (X : Type*) [TopologicalSpace X] : Type*

/--
For a Hausdorff, path connected, locally simply connected space X,
the deck transformation group of the universal cover is isomorphic to
the fundamental group π₁(X). The action is the usual one by concatenation
of loop-classes: [x] · [y] = [x * y].
-/

def deck_group_equiv_fundamental_group (hh : IsHausdorff X) (hp : IsPathConnected X)
  (hl : IsLocallySimplyConnected X) :
  DeckTransformationGroup (UniversalCover X) ≃ FundamentalGroup X := by sorry
