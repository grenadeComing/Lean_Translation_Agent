import Mathlib

/-!
Statement (informal): Let f_t : X -> Y be a homotopy of continuous maps with f_0(x_0)=f_1(x_0)=y_0.
Then the induced homomorphisms on fundamental groups agree: (f_0)_* = (f_1)_* : π_1(X,x_0) -> π_1(Y,y_0).

This file gives a Lean formulation of that statement in an abstract way: we assume a family `pi1` assigning
fundamental-group-like types to pointed spaces, a way to produce an `induced` map on these groups from a
continuous map, and a predicate `homotopic_basepoint` expressing a basepoint-preserving homotopy.
The proof is omitted (sorry).
-/

open Topology

universe u

variable (pi1 : ∀ (Z : Type u) [_ : TopologicalSpace Z] (z : Z), Type u)

/-- For a continuous map `f : X → Y` we get an induced map on `pi1`. -/
variable (induced : ∀ {X Y : Type u} [_X : TopologicalSpace X] [_Y : TopologicalSpace Y]
  {x0 : X} {y0 : Y}, (ContinuousMap X Y) → (pi1 X x0 → pi1 Y y0))

/-- `homotopic_basepoint f g` means `f` and `g` are homotopic through maps that fix the basepoint. -/
variable (homotopic_basepoint : ∀ {X Y : Type u} [_X : TopologicalSpace X] [_Y : TopologicalSpace Y]
  (f g : ContinuousMap X Y) (x0 : X) (y0 : Y), Prop)

theorem homotopic_maps_induce_same_map {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
  {x0 : X} {y0 : Y}
  (f0 f1 : ContinuousMap X Y)
  (H : homotopic_basepoint f0 f1 x0 y0)
  (h0 : f0 x0 = y0) (h1 : f1 x0 = y0) :
  induced (f0) = induced (f1) := by sorry
