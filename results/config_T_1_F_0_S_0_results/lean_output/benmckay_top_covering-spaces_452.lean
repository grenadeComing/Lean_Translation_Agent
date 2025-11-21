import Mathlib

/-- If X and Y are path connected Hausdorff topological spaces and f : X → Y is a covering map
with y0 = f x0, then the quotient π1(Y,y0) / f_* π1(X,x0) is in bijection with the fibre
f ⁻¹' {y0} (the set of points of X lying over y0). -/
theorem pi1_cosets_equiv_fiber {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [PathConnectedSpace X] [PathConnectedSpace Y] [T2Space X] [T2Space Y]
  (f : X → Y) (hf : IsCoveringMap f) (x0 : X) (y0 : Y) (hy : y0 = f x0) :
  ∃ (φ : QuotientGroup.quotient (FundamentalGroup.pi1 Y y0)
            (Subgroup.range (FundamentalGroup.map f x0)) → f ⁻¹' ({y0} : Set Y)),
    Function.Bijective φ := by sorry