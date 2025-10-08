import Mathlib

/--
A subgroup `M` of a group `G` is called a maximal subgroup if `M ≠ ⊤` and the only subgroups
of `G` which contain `M` are `M` and `⊤`.

If `H` is a proper subgroup of the finite group `G` then there is a maximal subgroup of `G`
containing `H`.
-/

theorem exists_maximal_subgroup_of_finite {G : Type*} [Group G] [Fintype G] {H : Subgroup G}
  (hproper : H ≠ (⊤ : Subgroup G)) :
  ∃ M : Subgroup G, H ≤ M ∧ M ≠ (⊤ : Subgroup G) ∧ ∀ K : Subgroup G, M ≤ K → (K = M ∨ K = (⊤ : Subgroup G)) := by sorry
