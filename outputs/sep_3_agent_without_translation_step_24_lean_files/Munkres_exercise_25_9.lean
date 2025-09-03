import Mathlib

open Set Topology

variable {G : Type*} [TopologicalSpace G] [Group G] [IsTopologicalGroup G]

def C : Set G := connectedComponent (1 : G)

lemma connected_component_one_is_normal_subgroup :
  (1 : G) ∈ C ∧
  (∀ x y, x ∈ C → y ∈ C → x * y ∈ C) ∧
  (∀ x, x ∈ C → x⁻¹ ∈ C) ∧
  (∀ g, (fun x => g * x * g⁻¹) '' C = C) := by
  sorry
