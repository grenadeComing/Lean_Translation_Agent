import Mathlib

/--
Suppose that f : X → Y is a continuous bijection from a topological space X to a Hausdorff space Y.
The claim below states that the inverse f^{-1} : Y → X is continuous.

Note: as stated this is not true in general; one standard sufficient hypothesis is that X is compact and Y is Hausdorff,
which makes a continuous bijection a homeomorphism. The theorem below faithfully formalises the (possibly false)
statement the user asked to translate.
-/

open Function

theorem continuous_inv_of_continuous_bijective_to_t2 {X : Type*} [TopologicalSpace X]
  {Y : Type*} [TopologicalSpace Y] [T2Space Y] (f : X → Y) (hf : Continuous f)
  (hb : Function.Bijective f) : Continuous (Function.invFun f) := by sorry
