import Mathlib

variable {G : Type _} [TopologicalSpace G] [Group G] [IsTopologicalGroup G]

open Set

/-- Let G be a topological group; let C be the component of G containing the identity element 1.
    This states that C contains 1, is closed under multiplication and inverses, and is normal.
    (Proof omitted.) -/
theorem connectedComponent_one_is_normal_subgroup :
  (1 : G) ∈ connectedComponent (1 : G) ∧
  (∀ x y, x ∈ connectedComponent (1 : G) → y ∈ connectedComponent (1 : G) → x * y ∈ connectedComponent (1 : G)) ∧
  (∀ x, x ∈ connectedComponent (1 : G) → x⁻¹ ∈ connectedComponent (1 : G)) ∧
  (∀ g x, x ∈ connectedComponent (1 : G) → g * x * g⁻¹ ∈ connectedComponent (1 : G)) := by
  sorry
