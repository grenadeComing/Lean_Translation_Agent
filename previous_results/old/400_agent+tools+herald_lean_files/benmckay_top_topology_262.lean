import Mathlib

open Prod

variable {X Y Z : Type _} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- Precomposition with the second projection: C(Y, Z) → C(X × Y, Z). -/
def snd_comp : C(Y, Z) → C(X × Y, Z) := fun f => f.comp (ContinuousMap.mk (Prod.snd : X × Y → Y) continuous_snd)

/-- A continuous map X × Y → Z is constant on each fiber X × {y} (i.e. independent of x). -/
def is_constant_on_X_fiber (h : C(X × Y, Z)) : Prop :=
  ∀ x1 x2 y, h (x1, y) = h (x2, y)

/-- The image of `snd_comp` is exactly the continuous maps X × Y → Z which are constant on each fiber X × {y}. -/
theorem snd_comp_range_eq : Set.range (snd_comp : C(Y, Z) → C(X × Y, Z)) = {h | is_constant_on_X_fiber h} := by
  sorry
