import Mathlib

universe u

/-- Classification of finite simple groups (statement only). We parametrize the standard
    families by abstract type-valued functions so that the statement can be expressed without
    committing to particular constructions in Mathlib. -/
theorem classification_of_finite_simple_groups
  (CyclicGroup : ℕ → Type u) (CyclicGroup_group : ∀ n, Group (CyclicGroup n))
  (AlternatingGroup : ℕ → Type u) (AlternatingGroup_group : ∀ n, Group (AlternatingGroup n))
  (SimpleGroupOfLieType : String → Type u) (SimpleGroupOfLieType_group : ∀ s, Group (SimpleGroupOfLieType s))
  (ClassicalLieGroup : String → Type u) (ClassicalLieGroup_group : ∀ s, Group (ClassicalLieGroup s))
  (ExceptionalLieGroup : String → Type u) (ExceptionalLieGroup_group : ∀ s, Group (ExceptionalLieGroup s))
  (SporadicSimpleGroup : Fin 26 → Type u) (SporadicSimpleGroup_group : ∀ i, Group (SporadicSimpleGroup i))
  {G : Type u} [Group G] [Fintype G] (hG : IsSimpleGroup G) :
  (∃ (p : ℕ) (hp : Nat.Prime p), Nonempty (G ≃* CyclicGroup p)) ∨
  (∃ (n : ℕ) (hn : n ≥ 5), Nonempty (G ≃* AlternatingGroup n)) ∨
  (∃ (s : String), Nonempty (G ≃* SimpleGroupOfLieType s)) ∨
  (∃ (s : String), Nonempty (G ≃* ClassicalLieGroup s)) ∨
  (∃ (s : String), Nonempty (G ≃* ExceptionalLieGroup s)) ∨
  (∃ (i : Fin 26), Nonempty (G ≃* SporadicSimpleGroup i)) := by
  sorry
