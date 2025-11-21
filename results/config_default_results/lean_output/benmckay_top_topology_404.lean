import Mathlib

/-- Suppose f : X → Y is a continuous bijection from a topological space X to a Hausdorff space Y.
    Then the inverse of f is continuous. -/
theorem continuous_inv_of_continuous_bijective {X Y : Type _} [TopologicalSpace X]
    [TopologicalSpace Y] [T2Space Y] {f : X → Y} (hf : Continuous f)
    (hbij : Function.Bijective f) :
    Continuous ((Equiv.ofBijective f hbij).symm.toFun) := by sorry
