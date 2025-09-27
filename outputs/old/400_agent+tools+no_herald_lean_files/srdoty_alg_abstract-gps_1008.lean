import Mathlib

/--
If H is a subgroup of index 2 in a group G, then any element outside H together with H generates G.
This is the abstract group-theoretic lemma that specializes to the statement about O(2) and SO(2):
if SO(2) has index 2 in O(2) then O(2) = ⟨SO(2) ∪ {A}⟩ for any A ∈ O(2) \ SO(2).
-/
theorem subgroup_generated_by_index_two {G : Type*} [Group G] {H : Subgroup G} {a : G}
  (h_index : H.index = 2) (ha : a ∉ H) : Subgroup.closure (H.toSubmonoid.carrier ∪ {a}) = (⊤ : Subgroup G) := by
  sorry

/-- Concrete formulation for O(2)/SO(2) as a corollary: we state it abstractly assuming the
index-2 property of SO(2). One may instantiate this with the concrete definitions of O(2)
and SO(2) in terms of orthogonal 2×2 real matrices and the fact that SO(2) has index 2.
-/
theorem O2_generated_by_SO2_and_A {G : Type*} [Group G] (O2 SO2 : Subgroup G) (h_index : SO2.index = 2)
  (A : G) (hA_in_O2 : A ∈ O2) (hA_notin_SO2 : A ∉ SO2) : Subgroup.closure (SO2.toSubmonoid.carrier ∪ {A}) = (⊤ : Subgroup G) := by
  -- This follows directly from `subgroup_generated_by_index_two` once one identifies H = SO2 and a = A.
  sorry
