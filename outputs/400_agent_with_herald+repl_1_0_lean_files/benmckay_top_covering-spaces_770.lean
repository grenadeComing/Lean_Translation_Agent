import Mathlib

variable {X : Type} [TopologicalSpace X]
variable {Xtil : Type} [TopologicalSpace Xtil]
variable {p : Xtil → X}
variable {Deck : Type} {π1X : Type}

/-- For a Hausdorff, path connected, locally simply connected space X,
the deck transformation group of a universal cover p : Xtil → X is
isomorphic to the fundamental group π1(X), acting by [γ]·[η] = [γ * η]. -/
theorem deck_transformations_group_eq_pi1
  (Haus : Prop) (PathConnected : Prop) (LocallySimplyConnected : Prop)
  (p_universal : Prop) :
  Deck = π1X := by sorry
