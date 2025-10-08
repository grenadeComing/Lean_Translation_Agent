import Mathlib

/-!
Abstract statement: If X is Hausdorff, path connected and locally simply
connected, then the deck transformation group of a universal covering
p : U → X is isomorphic to the fundamental group π₁(X).
The proof is omitted (`sorry`).
-/

variable {X : Type*} [TopologicalSpace X]

/-- `p : U → X` is a universal covering map (abstract). -/
constant IsUniversalCover {U : Type*} (p : U → X) : Prop

/-- Deck transformation group of a covering map `p` (abstract). -/
constant DeckGroup {U : Type*} (p : U → X) : Type*

/-- The fundamental group of `X` (abstract). -/
constant pi1 : Type*

/-- The deck group of a universal cover is (group-)isomorphic to π₁(X).
    The proof is omitted. -/
theorem deck_group_equiv_pi1 {U : Type*} (p : U → X) (hp : IsUniversalCover (p : U → X))
  [Group (DeckGroup (p : U → X))] [Group pi1] : DeckGroup (p : U → X) ≃* pi1 := by sorry
