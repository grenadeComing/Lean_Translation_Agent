import Mathlib

/-!
Corrected and formalized statement:
Let X, Y, Z be topological spaces. The pullback along the second projection π₂ : X × Y → Y
induces an equivalence between the space of continuous maps Y → Z and the subspace of
continuous maps X × Y → Z which depend only on the Y-coordinate (equivalently, which are
constant on each horizontal slice X × {y}).

Remark: the original statement mentioned sets of the form {x} × Y; that is a typographical
swap. A map coming from C(Y) is constant on each set X × {y}, not on {x} × Y.
-/

variables {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

theorem continuous_functions_on_prod_iso_const_on_horizontal_slices :
  (ContinuousMap Y Z) ≃ { g : ContinuousMap (X × Y) Z // ∀ y x1 x2, g (x1, y) = g (x2, y) } :=
by sorry