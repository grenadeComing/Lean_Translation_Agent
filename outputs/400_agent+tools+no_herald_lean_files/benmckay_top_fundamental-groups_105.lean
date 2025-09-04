import Mathlib

/-!
Let X be a topological space and p : Path x0 x1 a path from x0 to x1.
The map on fundamental groups induced by conjugation by p sends the class of a loop y
based at x0 to the class of p.symm.trans (y.trans p), a loop based at x1.
This defines a group isomorphism FundamentalGroup X x0 ≃* FundamentalGroup X x1.
-/

variable (X : Type*) [TopologicalSpace X]

/-- Given a path p : Path x0 x1, the map on fundamental groups given by
    [y] ↦ [p.symm.trans (y.trans p)] is a group isomorphism. -/
def fundamental_group_conj {x0 x1 : X} (p : Path x0 x1) :
  FundamentalGroup X x0 ≃* FundamentalGroup X x1 := by
  -- proof omitted
  sorry
