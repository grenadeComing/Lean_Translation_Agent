import Mathlib

/-!
Statement (formalised, no proof):
Let X,Y be topological spaces. Let x0,x1 : X and y0,y1 : Y be basepoints.
Let f0_star : π_1(X,x0) → π_1(Y,y0) and f1_star : π_1(X,x1) → π_1(Y,y1) be the homomorphisms
induced by the time-slices f_0,f_1 of a homotopy F, and let
x_star : π_1(X,x0) → π_1(X,x1) and y_star : π_1(Y,y0) → π_1(Y,y1)
be the isomorphisms given by change of basepoint along paths x and y respectively.
Then the induced homomorphisms satisfy the equality
  y_* ∘ (f_0)_* = (f_1)_* ∘ x_* : π_1(X,x0) → π_1(Y,y1).
This file records that equality as a theorem (no proof).
-/

variables {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

variable (x0 x1 : X) (y0 y1 : Y)

variable (f0_star : FundamentalGroup X x0 → FundamentalGroup Y y0)
variable (f1_star : FundamentalGroup X x1 → FundamentalGroup Y y1)
variable (x_star  : FundamentalGroup X x0 → FundamentalGroup X x1)
variable (y_star  : FundamentalGroup Y y0 → FundamentalGroup Y y1)

theorem homotopy_induced_on_fundamental_groups :
  (y_star : FundamentalGroup Y y0 → FundamentalGroup Y y1) ∘
    (f0_star : FundamentalGroup X x0 → FundamentalGroup Y y0)
  = (f1_star : FundamentalGroup X x1 → FundamentalGroup Y y1) ∘
    (x_star : FundamentalGroup X x0 → FundamentalGroup X x1) := by sorry
