import Mathlib

universe u v

/--
Let X and Y be topological spaces with basepoints x0 ∈ X and y0 ∈ Y.
There is an isomorphism of fundamental groups
π_1(X × Y, (x0, y0)) ≅ π_1(X, x0) × π_1(Y, y0).
-/
noncomputable def pi_1_prod {X : Type u} {Y : Type v} [TopologicalSpace X] [TopologicalSpace Y]
  (x0 : X) (y0 : Y) :
  (fundamental_group (X × Y) (x0, y0)) ≅ (fundamental_group X x0) × (fundamental_group Y y0) := by sorry
