import Mathlib

/--
Exercise 2.4.16(a) (Dummit–Foote).
Let G be a finite group and H a proper subgroup of G. Then there exists a maximal subgroup
M of G containing H; i.e. M ≠ ⊤ and the only subgroups of G containing M are M and ⊤.
-/
theorem exists_maximal_subgroup_of_finite_group {G : Type*} [Group G] [Fintype G]
  (H : Subgroup G) (hproper : H ≠ (⊤ : Subgroup G)) :
  ∃ M : Subgroup G, M ≠ (⊤ : Subgroup G) ∧ H ≤ M ∧ ∀ K : Subgroup G, M ≤ K → (K = M ∨ K = (⊤ : Subgroup G)) := by sorry
