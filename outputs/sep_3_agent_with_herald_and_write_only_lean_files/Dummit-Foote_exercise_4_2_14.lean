import Mathlib

/-!
Exercise (Dummit & Foote, 4.2.14).
Let G be a finite group of composite order n with the property that
G has a subgroup of order k for each positive integer k dividing n.
Prove that G is not simple.
-/

theorem Dummit_Foote_exercise_4_2_14 {G : Type _} [Group G] [Fintype G]
  (hcomp : ∃ a b : ℕ, 1 < a ∧ 1 < b ∧ Fintype.card G = a * b)
  (hsub : ∀ k : ℕ, k ∣ Fintype.card G → ∃ H : Subgroup G, Fintype.card H = k) :
  ∃ N : Subgroup G, N.normal ∧ N ≠ ⊥ ∧ N ≠ ⊤ := by
  sorry
