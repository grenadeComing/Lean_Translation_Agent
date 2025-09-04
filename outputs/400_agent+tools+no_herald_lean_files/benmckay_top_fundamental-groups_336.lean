import Mathlib

universe u v

open Topology

/-- The fundamental group of a product is the product of the fundamental groups. -/
def fundamental_group_prod {X : Type u} {Y : Type v} [TopologicalSpace X] [TopologicalSpace Y]
  (x0 : X) (y0 : Y) :
  FundamentalGroup (X × Y) (x0, y0) ≃* FundamentalGroup X x0 × FundamentalGroup Y y0 := by sorry
