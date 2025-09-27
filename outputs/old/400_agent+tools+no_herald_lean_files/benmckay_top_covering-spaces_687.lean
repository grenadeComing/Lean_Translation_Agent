import Mathlib

/--
The fundamental group π1(Y, y0) acts on the fiber p^{-1}(y0) for every covering space p : X → Y
of a path connected and locally simply connected topological space Y, by the action [x][y] = [x*y],
which is continuous.
-/

def pi1_acts_on_fiber (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y) (y0 : Y) (is_covering : Prop) (Y_path_connected : Prop) (Y_locally_simply_connected : Prop) :
  Prop := by sorry
