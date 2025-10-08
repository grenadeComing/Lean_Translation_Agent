import Mathlib

/-!
Statement (informal):
Let F : [0,1] × X → Y be a homotopy and write f_t(·) = F(t,·). Let x0 x1 ∈ X and set y0 = f_0(x0), y1 = f_1(x1).
Let x : [0,1] → X be a path from x0 to x1, and define y : [0,1] → Y by y(t) = F(t,x(t)), a path from y0 to y1.
Define isomorphisms x_* : π1(X,x0) → π1(X,x1) and y_* : π1(Y,y0) → π1(Y,y1)
by x_*([γ]) = [\bar x * γ * x], y_*([δ]) = [\bar y * δ * y].
Then the induced homomorphisms on fundamental groups satisfy
  y_* ∘ (f_0)_* = (f_1)_* ∘ x_* : π1(X,x0) → π1(Y,y1).

Below is a formalized version of this statement. The names for the
fundamental-group construction and the change-of-basepoint maps are
written in a Mathlib-like style (pi1.map, pi1.change_of_basepoint). The
proof is omitted ("by sorry").
-/

theorem homotopy_induced_pi1_commute
  {I X Y : Type*} [TopologicalSpace I] [TopologicalSpace X] [TopologicalSpace Y]
  (F : I × X → Y) -- the homotopy F(t,x)
  (f0 f1 : X → Y) -- the time-0 and time-1 maps (f0 = F t0, f1 = F t1)
  (x0 x1 : X)
  (x : I → X) -- a path from x0 to x1
  (y : I → Y) -- the path y(t) = F (t, x t)
  -- the following hypotheses express the intended relations; in a
  -- complete formalization these would be continuity/path conditions
  (h_y_def : ∀ t, y t = F (t, x t))
  (h_x0 : x 0 = x0) (h_x1 : x 1 = x1)
  (h_y0 : y 0 = f0 x0) (h_y1 : y 1 = f1 x1) :
  -- pi1.map and pi1.change_of_basepoint are used as Mathlib-like names
  (pi1.change_of_basepoint y).comp (pi1.map f0) = (pi1.map f1).comp (pi1.change_of_basepoint x) := by sorry
