import Mathlib

/-!
Herstein, Exercise 2.3.16 (translated)
If a group G has no nontrivial proper subgroups, prove that G is cyclic of order p, where p is prime.
We state the result for finite, nontrivial groups whose only subgroups are the trivial subgroup and the whole group.
-/

theorem Herstein_exercise_2_3_16 {G : Type*} [Group G] [Fintype G] [Pow G ℤ] [Nontrivial G]
  (h : ∀ H : Subgroup G, H = (⊥ : Subgroup G) ∨ H = (⊤ : Subgroup G)) :
  ∃ p : ℕ, Nat.Prime p ∧ Fintype.card G = p ∧ IsCyclic G := by
  sorry
