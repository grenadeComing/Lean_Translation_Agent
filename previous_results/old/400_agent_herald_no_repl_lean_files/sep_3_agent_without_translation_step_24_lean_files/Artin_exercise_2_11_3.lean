import Mathlib

/-!
Artin, Exercise 2.11.3:
Prove that a group of even order contains an element of order 2.

We state the result for a finite group G whose cardinality is divisible by 2.
-/

theorem Artin_exercise_2_11_3 {G : Type _} [Group G] [Fintype G] (h : 2 ∣ Fintype.card G) :
  ∃ g : G, g ≠ 1 ∧ g * g = 1 := by
  sorry
