import Mathlib

variable {G : Type*} [Group G]

/-- If H is a nontrivial normal subgroup of the solvable group G then there is a nontrivial
subgroup A of H with A ⊲ G and A abelian.  -/
theorem Dummit_Foote_exercise_3_4_11 {H : Subgroup G}
  (hH_nontrivial : H ≠ (⊥ : Subgroup G))
  (hH_normal : ∀ g x, x ∈ H → g * x * g⁻¹ ∈ H)
  (hG_solvable : IsSolvable G) :
  ∃ A : Subgroup G,
    A ≤ H ∧ A ≠ (⊥ : Subgroup G) ∧ (∀ g x, x ∈ A → g * x * g⁻¹ ∈ A) ∧ (∀ x y, x ∈ A → y ∈ A → x * y = y * x) := by sorry
