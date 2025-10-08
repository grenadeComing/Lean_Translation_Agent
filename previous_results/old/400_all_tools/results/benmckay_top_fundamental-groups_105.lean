import Mathlib

/-!
Change of basepoint isomorphism for the fundamental group.
Given a path p : Path x0 x1, the map [y] ↦ [p.symm.trans (y.trans p)] induces an
isomorphism of groups π_1(X, x0) → π_1(X, x1).

This file only states the theorem (ending with `:= by sorry`).
-/

universe u

noncomputable def fundamental_group_change_of_basepoint (X : Type u) [TopologicalSpace X]
  {x0 x1 : X} (p : Path x0 x1) :
  MulEquiv (FundamentalGroup X x0) (FundamentalGroup X x1) := by sorry
