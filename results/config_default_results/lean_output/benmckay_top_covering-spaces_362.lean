import Mathlib

variables {X Y Z : Type*} [TopologicalSpace X] [T2Space X] [TopologicalSpace Y] [TopologicalSpace Z]

variable (f : X → Y)
variable (hf : IsCoveringMap f)

variables (g₁ g₂ : Z → X) (hg₁ : Continuous g₁) (hg₂ : Continuous g₂)

/-- Take a covering map f : X → Y from a Hausdorff space X to a topological space Y.
Suppose that a map g1 : Z → X and a map g2 : Z → X satisfy f(g1(z)) = f(g2(z)) for every z in Z.
If g1(z0) = g2(z0) for some point z0 in Z then g1 = g2. -/
theorem eq_of_covering_lifts_eq (h : ∀ z : Z, f (g₁ z) = f (g₂ z)) (z0 : Z) (hz0 : g₁ z0 = g₂ z0) : g₁ = g₂ := by sorry
