import Mathlib

/--
Let X be a Hausdorff, path connected, and locally simply connected topological space.
Let p : X̃ → X be the universal covering map. Then the group of deck
transformations of p is isomorphic (as a group) to the fundamental group π₁(X, x0).

More concretely: choosing a basepoint x0 : X, there is a group isomorphism
DeckGroup p ≃* FundamentalGroup X x0, which sends the homotopy class [γ] ∈ π₁(X, x0)
to the deck transformation d_γ defined on a point represented by a path-class [α]
(with α(0) = x0) by d_γ([α]) = [γ * α].
-/
theorem deck_group_iso_fundamental_group {X : Type*} [TopologicalSpace X] [T2Space X]
  [PathConnectedSpace X] [LocallySimplyConnectedSpace X]
  {X̃ : Type*} [TopologicalSpace X̃] (p : X̃ → X) (hp : IsCoveringMap p) (h_univ : IsUniversalCover p)
  (x0 : X) :
  DeckGroup p ≃* FundamentalGroup X x0 := by sorry