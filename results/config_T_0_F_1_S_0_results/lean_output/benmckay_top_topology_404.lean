import Mathlib

/--
Suppose that `f : X → Y` is a continuous bijection from a topological space `X` to a Hausdorff space `Y`.
Then the inverse `f⁻¹ : Y → X` is continuous.
-/
theorem continuous_inverse_of_continuous_bijective_to_t2 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf : Function.Bijective f) (hcont : Continuous f) [T2Space Y] :
  Continuous ((Equiv.ofBijective f hf).symm.toFun) := by sorry
