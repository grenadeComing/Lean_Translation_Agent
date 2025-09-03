import Mathlib

/-!
Exercise (Dummit & Foote 4.5.15):
A group of order 351 has a normal Sylow p-subgroup for some prime p dividing its order.
We state a Lean version: there exists a prime p and a Sylow p-subgroup P of G which is unique
(as a Sylow p-subgroup), hence normal. This file contains only the statement, not the proof.
-/

theorem Dummit_Foote_exercise_4_5_15 (G : Type*) [Group G] [Fintype G] (h : Fintype.card G = 351) :
  ∃ (p : ℕ), Nat.Prime p ∧ ∃ (P : Sylow p G), ∀ (Q : Sylow p G), Q = P := by sorry
