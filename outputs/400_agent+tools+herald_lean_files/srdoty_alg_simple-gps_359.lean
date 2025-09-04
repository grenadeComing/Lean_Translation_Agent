import Mathlib

universe u

axiom AlternatingGroup : ℕ → Type u
axiom IsSimpleGroupOfLieType : ∀ (G : Type u) [Group G], Prop
axiom IsSporadicSimpleGroup : ∀ (G : Type u) [Group G], Prop

theorem classification_of_finite_simple_groups (G : Type u) [Group G] [Fintype G]
  (h : IsSimpleGroup G) :
  (∃ p : ℕ, Nat.Prime p ∧ Fintype.card G = p) ∨
  (∃ n : ℕ, n ≥ 5 ∧ Nonempty (G ≃ AlternatingGroup n)) ∨
  IsSimpleGroupOfLieType G ∨
  IsSporadicSimpleGroup G := by sorry
