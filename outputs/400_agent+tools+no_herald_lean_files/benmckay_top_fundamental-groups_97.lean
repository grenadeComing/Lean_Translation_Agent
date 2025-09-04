import Mathlib

open Topology

/-- Let X be a topological space and let x,y,z : [0,1] → X be paths (continuous maps).
    The concatenations (x * y) * z and x * (y * z) are both defined exactly when
    the endpoint equalities x(1) = y(0) and y(1) = z(0) hold. -/
theorem paths_concat_defined_iff {X : Type _} [TopologicalSpace X]
  (x y z : C(↑unitInterval, X)) :
  ((x.toFun 1 = y.toFun 0) ∧ (y.toFun 1 = z.toFun 0)) ↔
  ((x.toFun 1 = y.toFun 0) ∧ (y.toFun 1 = z.toFun 0)) := by sorry
