import Mathlib

/-- If G1 and G2 are cyclic groups of orders m and n, respectively, then
    G1 × G2 is cyclic iff m and n are relatively prime. -/
theorem herstein_exercise_2_9_2 {G1 G2 : Type*} [Group G1] [Fintype G1] [Pow G1 ℤ]
  [Group G2] [Fintype G2] [Pow G2 ℤ] {m n : ℕ}
  (h1 : Fintype.card G1 = m) (h2 : Fintype.card G2 = n)
  (hc1 : IsCyclic G1) (hc2 : IsCyclic G2) :
  IsCyclic (G1 × G2) ↔ Nat.Coprime m n := by sorry
