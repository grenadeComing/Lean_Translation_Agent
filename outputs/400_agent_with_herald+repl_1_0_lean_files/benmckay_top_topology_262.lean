import Mathlib

variable {X Y Z : Type _} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- Compose a continuous map on Y with the second projection X × Y → Y. -/
def snd_comp (f : ContinuousMap Y Z) : ContinuousMap (X × Y) Z :=
  f.comp (ContinuousMap.mk Prod.snd continuous_snd)

/-- The image of snd_comp is exactly the continuous maps X × Y → Z which are constant in the
    X-coordinate for each fixed y, i.e. for each y the function is constant on X × {y}. -/
theorem snd_comp_range :
  Set.range (snd_comp : ContinuousMap Y Z → ContinuousMap (X × Y) Z) =
    { g : ContinuousMap (X × Y) Z | ∀ x1 x2 y, g (x1, y) = g (x2, y) } := by
  sorry
