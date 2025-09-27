import Mathlib

universe u

constant is_alternating : (G : Type u) → ℕ → Prop
constant is_lie_type : (G : Type u) → Prop
constant is_classical_lie : (G : Type u) → Prop
constant is_exceptional_lie : (G : Type u) → Prop
constant is_sporadic : (G : Type u) → ℕ → Prop

 theorem classification_of_finite_simple_groups (G : Type u) [Group G] [Fintype G] [IsSimpleGroup G] :
  (∃ p : ℕ, Nat.Prime p ∧ Fintype.card G = p) ∨
  (∃ n : ℕ, 5 ≤ n ∧ is_alternating G n) ∨
  is_lie_type G ∨
  is_classical_lie G ∨
  is_exceptional_lie G ∨
  (∃ i : ℕ, is_sporadic G i) := by
  sorry
