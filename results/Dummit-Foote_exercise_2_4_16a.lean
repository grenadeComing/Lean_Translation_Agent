import Mathlib

/-- Exercise 2.4.16(a) (Dummit & Foote)
If H is a proper subgroup of the finite group G then there is a maximal subgroup of G containing H. -/
theorem exists_maximal_subgroup_containing {G : Type*} [Group G] [Fintype G]
  (H : Subgroup G) (hproper : H ≠ (⊤ : Subgroup G)) :
  ∃ M : Subgroup G,
    H ≤ M ∧ M ≠ (⊤ : Subgroup G) ∧ (∀ K : Subgroup G, M ≤ K → (K = M ∨ K = (⊤ : Subgroup G))) := by sorry
