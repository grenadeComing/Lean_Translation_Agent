import Mathlib

open TopologicalSpace

/-!
A covering map induces an injective map on π₁ when the domain is Hausdorff.
-/-

theorem covering_map.induced_pi1_injective {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {f : X → Y} (hf : CoveringMap f) (hX : T2Space X) (x : X) :
  Function.Injective (fundamental_group.map f x) := by sorry
