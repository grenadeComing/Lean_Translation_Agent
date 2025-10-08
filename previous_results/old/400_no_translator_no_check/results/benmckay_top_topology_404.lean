import Mathlib

/--
Suppose that f : X → Y is a continuous bijection from a topological space X to a Hausdorff space Y.
Then the inverse f^{-1} : Y → X is continuous.

Note: The statement below mirrors the given exercise. Mathlib's `Function.invFun` requires a `Nonempty X`
instance, so we include that as an additional hypothesis. The proof is omitted (by `sorry`).
-/
theorem continuous_inverse_of_continuous_bijective_to_t2 {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf : Continuous f) (hbij : Function.Bijective f) (hY : T2Space Y) (hX : Nonempty X) :
  Continuous (Function.invFun f) := by
  sorry
