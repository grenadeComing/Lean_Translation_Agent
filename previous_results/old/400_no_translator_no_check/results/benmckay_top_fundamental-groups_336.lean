import Mathlib

open TopologicalSpace

def pi1_prod {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (x0 : X) (y0 : Y) :
  FundamentalGroup (X × Y) (x0, y0) ≃ FundamentalGroup X x0 × FundamentalGroup Y y0 := by sorry
