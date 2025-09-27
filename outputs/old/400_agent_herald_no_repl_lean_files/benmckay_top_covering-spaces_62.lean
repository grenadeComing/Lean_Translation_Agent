import Mathlib

/-!
Translate: The number n of sheets (which might be ∞) above an evenly covered open set is constant along any path in Y.
In particular, if Y is path connected, this number n is constant, and we say that the covering map is n to 1.

We state this by giving an equivalence between fibres along a path, and hence equality of their cardinals when Y is path connected.
-/

open Set

theorem covering_space.equiv_fiber_along_path {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  {p : X → Y} (hp : IsCovering p) {y0 y1 : Y} (γ : Path y0 y1) :
  { x : X // p x = y0 } ≃ { x : X // p x = y1 } := by sorry

theorem covering_space.cardinal_fiber_const_on_path_connected {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  {p : X → Y} (hp : IsCovering p) (h : PathConnected Y) (y0 y1 : Y) :
  Cardinal.mk { x : X // p x = y0 } = Cardinal.mk { x : X // p x = y1 } := by sorry
