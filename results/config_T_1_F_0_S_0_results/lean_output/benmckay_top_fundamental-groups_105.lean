import Mathlib

/-- Let X be a topological space and p : Path X x0 x1 a path from x0 to x1.
    The map sending the homotopy class [y] ∈ π1(X,x0) of a loop y based at x0
    to the homotopy class [p.symm * (y * p)] ∈ π1(X,x1) is an isomorphism
    π1(X,x0) ≃* π1(X,x1). -/
lemma pi1_conjugation_by_path {X : Type*} [TopologicalSpace X] {x0 x1 : X} (p : Path X x0 x1) :
  fundamental_group X x0 ≃* fundamental_group X x1 := by sorry
