import Mathlib

/-
If X and Y are path connected Hausdorff topological spaces and f : X → Y is a covering map with y0 = f(x0),
then the map π1(Y,y0)/f_* π1(X,x0) → X_{y0} is bijective.
-/

open Topology

theorem covering_space_monodromy_bijective {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [PathConnectedSpace X] [T2Space X] [PathConnectedSpace Y] [T2Space Y]
  (f : X → Y) (hf : IsCoveringMap f) (x0 : X) (y0 : Y) (h : y0 = f x0) :
  Function.Bijective (fun q : FundamentalGroup Y y0 => Unit) := by sorry
