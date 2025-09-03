import Mathlib

/-!
Herstein, Exercise 2.9.2
If G1 and G2 are cyclic groups of orders m and n, respectively,
then G1 × G2 is cyclic iff m and n are relatively prime.
-/

theorem Herstein_exercise_2_9_2 {G1 G2 : Type*} [Group G1] [Fintype G1] [Pow G1 ℤ] [IsCyclic G1]
  {m : ℕ} (hm : Fintype.card G1 = m)
  [Group G2] [Fintype G2] [Pow G2 ℤ] [IsCyclic G2] {n : ℕ} (hn : Fintype.card G2 = n) :
  IsCyclic (G1 × G2) ↔ Nat.Coprime m n := by sorry
