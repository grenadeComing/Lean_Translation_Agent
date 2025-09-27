import Mathlib

universe u v

/-- For pointed spaces (X, x0) and (Y, y0), the fundamental group of the product is the product of the fundamental groups. -/
def fundamental_group_prod (X : Type u) (Y : Type v) [TopologicalSpace X] [TopologicalSpace Y]
  (x0 : X) (y0 : Y) :
  FundamentalGroup (X × Y) (x0, y0) ≃* FundamentalGroup X x0 × FundamentalGroup Y y0 := by sorry
