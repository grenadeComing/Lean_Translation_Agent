import Mathlib

/--
Let G be a finite group of composite order n with the property that G has a subgroup of order k
for each positive integer k dividing n. Then G is not simple.
-/
theorem Dummit_Foote_exercise_4_2_14 {G : Type _} [Group G] [Fintype G]
  (h_sub : ∀ k : ℕ, k ∣ Fintype.card G → ∃ (H : Subgroup G) (s : Fintype (H : Type)),
    Fintype.card (H : Type) = k)
  (h_comp : ¬ Nat.Prime (Fintype.card G) ∧ Fintype.card G > 1) :
  ¬ IsSimpleGroup G := by sorry
