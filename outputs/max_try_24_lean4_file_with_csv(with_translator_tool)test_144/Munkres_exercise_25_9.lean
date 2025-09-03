import Mathlib

variable {G : Type*} [TopologicalSpace G] [Group G] [IsTopologicalGroup G]

/-- The connected component of the identity element 1, defined as the union of all connected
sets containing 1. -/
def component_of_one : Set G := ⋃₀ { s : Set G | IsConnected s ∧ (1 : G) ∈ s }

/-- The component of the identity is a (normal) subgroup. We state the subgroup properties and
invariance under conjugation. -/
theorem component_of_one_is_normal_subgroup :
  (1 : G) ∈ component_of_one ∧
  (∀ a b : G, a ∈ component_of_one → b ∈ component_of_one → a * b ∈ component_of_one) ∧
  (∀ a : G, a ∈ component_of_one → a⁻¹ ∈ component_of_one) ∧
  (∀ g a : G, a ∈ component_of_one → (g * a) * g⁻¹ ∈ component_of_one) := by sorry
