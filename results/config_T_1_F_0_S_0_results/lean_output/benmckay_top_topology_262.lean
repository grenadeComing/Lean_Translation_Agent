import Mathlib

/--
Suppose X and Y are topological spaces and Z is any topological space. The map
ContinuousMap X Z → ContinuousMap (X × Y) Z given by f ↦ f ∘ ContinuousMap.fst
is injective, and its range is exactly the continuous maps g : X × Y → Z which
are constant on each fibre {x} × Y (equivalently, for all x and all y₁ y₂,
g (x, y₁) = g (x, y₂)).

Note: the original natural-language statement appeared to assert this for
C(Y) → C(X × Y); that is a typo — the correct source is C(X).
-/
theorem continuous_map_comp_fst_range_eq_constant_on_fibres {X Y Z : Type*}
  [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z] :
  Function.Injective (fun f : ContinuousMap X Z => f.comp ContinuousMap.fst) ∧
  (Set.range (fun f : ContinuousMap X Z => f.comp ContinuousMap.fst) =
    { g : ContinuousMap (X × Y) Z | ∀ x y1 y2, g (x, y1) = g (x, y2) }) := by sorry