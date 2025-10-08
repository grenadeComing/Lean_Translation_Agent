import Mathlib

/--
The fundamental group of any compact, path connected, and locally simply connected
topological space is finitely generated.

We state the existence of a finite generating set for π₁(X, x0).
-/
theorem fundamental_group_finitely_generated {X : Type*} [TopologicalSpace X]
  [CompactSpace X] [PathConnectedSpace X] [LocallySimplyConnectedSpace X] (x0 : X) :
  ∃ (S : Finset (FundamentalGroup X x0)),
    Subgroup.closure (S : Set (FundamentalGroup X x0)) = (⊤ : Subgroup (FundamentalGroup X x0)) := by sorry