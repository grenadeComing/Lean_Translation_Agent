import Mathlib

universe u v

/-- Let X and Y be topological spaces with basepoints x0 ∈ X and y0 ∈ Y.

    Then the fundamental group of the product is isomorphic to the product
    of the fundamental groups. -/
theorem fundamental_group_prod (X : Type u) (Y : Type v) [TopologicalSpace X] [TopologicalSpace Y]
  (x0 : X) (y0 : Y) :
  FundamentalGroup (X × Y) (x0, y0) ≃ FundamentalGroup X x0 × FundamentalGroup Y y0 := by sorry