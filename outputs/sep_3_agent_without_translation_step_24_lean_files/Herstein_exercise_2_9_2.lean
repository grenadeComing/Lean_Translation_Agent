import Mathlib

/-!
Exercise: If G1 and G2 are cyclic groups of orders m and n, respectively,
then G1 × G2 is cyclic iff m and n are relatively prime.
-/

theorem Herstein_exercise_2_9_2 (G1 G2 : Type _) [Group G1] [Group G2]
  [Fintype G1] [Fintype G2] (m n : ℕ)
  (h_cyc1 : IsCyclic G1) (h_card1 : Fintype.card G1 = m)
  (h_cyc2 : IsCyclic G2) (h_card2 : Fintype.card G2 = n) :
  IsCyclic (G1 × G2) ↔ Nat.gcd m n = 1 := by sorry
