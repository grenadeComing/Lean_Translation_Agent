import Mathlib

variable {G : Type*} [Group G]

/-- If H is a subgroup of index two in G and a ∉ H, then H together with a generates G. -/
theorem subgroup_index_two_generated (H : Subgroup G) (h_index : H.index = 2) (a : G) (ha : a ∉ H) :
  Subgroup.closure ((H : Set G) ∪ {a}) = (⊤ : Subgroup G) := by sorry