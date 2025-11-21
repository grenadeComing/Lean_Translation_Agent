import Mathlib

-- Let X and Y be topological spaces with basepoints x0 ∈ X and y0 ∈ Y.
-- Statement: π1 (X × Y, (x0, y0)) ≅ π1(X, x0) × π1(Y, y0).

def pi1_prod_equiv {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (x0 : X) (y0 : Y) :
  FundamentalGroup (X × Y) (x0, y0) ≃* FundamentalGroup X x0 × FundamentalGroup Y y0 := by sorry
