import Mathlib

variable {G : Type*} [Group G]

/--
If H is a nontrivial normal subgroup of the solvable group G then there is a nontrivial
subgroup A of H with A ⊲ G and A abelian.
We express normality and abelian explicitly using sets and group operations.
-/
lemma exists_nontrivial_normal_abelian_subgroup_of_solvable
  (H : Set G)
  (H_nontrivial : ∃ h, h ∈ H ∧ h ≠ 1)
  (H_normal : ∀ g h, h ∈ H → g * h * g⁻¹ ∈ H)
  (G_solvable : IsSolvable G) :
  ∃ A : Set G,
    (A ⊆ H) ∧
    (∃ a, a ∈ A ∧ a ≠ 1) ∧
    (∀ g a, a ∈ A → g * a * g⁻¹ ∈ A) ∧
    (∀ a b, a ∈ A → b ∈ A → a * b = b * a) := by sorry
