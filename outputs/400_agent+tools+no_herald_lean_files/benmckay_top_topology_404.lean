import Mathlib

/-!
Suppose f : X → Y is a continuous bijection from a topological space X to a Hausdorff space Y.
Then the inverse f ⁻¹ : Y → X is continuous.
We state the theorem and leave the proof as `sorry`.
-/

open Function

theorem continuous_inverse_of_continuous_bijective_of_hausdorff {X Y : Type _}
  [TopologicalSpace X] [Nonempty X] [TopologicalSpace Y] [T2Space Y]
  {f : X → Y} (hf : Continuous f) (hb : Function.Bijective f) :
  Continuous (Function.invFun f) := by
  sorry
