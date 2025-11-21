import Mathlib

/-- A placeholder definition of the fundamental group of a pointed topological space.
    For the purpose of stating the product formula below we only need a name for the
    object π₁(X, x0); we do not develop its construction here. -/
noncomputable def fundamental_group (X : Type*) [TopologicalSpace X] (x0 : X) : Type* := PUnit

/-- The fundamental group of a product is (canonically) isomorphic to the product of the
    fundamental groups. This is the statement of the usual theorem
    π₁(X × Y, (x0, y0)) ≃ π₁(X, x0) × π₁(Y, y0).
    The proof is omitted. -/
noncomputable def pi_1_prod {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (x0 : X) (y0 : Y) :
  fundamental_group (X × Y) (x0, y0) ≃ (fundamental_group X x0 × fundamental_group Y y0) := by sorry
