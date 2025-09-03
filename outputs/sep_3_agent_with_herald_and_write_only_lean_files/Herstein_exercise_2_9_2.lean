import Mathlib

/-!
Exercise (Herstein 2.9.2).
If G1 and G2 are cyclic groups of orders m and n, respectively, prove that G1 × G2 is cyclic iff m and n are relatively prime.
-/

theorem Herstein_exercise_2_9_2 {G1 G2 : Type*} [Group G1] [Group G2] [Fintype G1] [Fintype G2]
  (m n : Nat)
  (hG1_card : Fintype.card G1 = m)
  (hG2_card : Fintype.card G2 = n)
  (hcyc1 : ∃ g1 : G1, orderOf g1 = m)
  (hcyc2 : ∃ g2 : G2, orderOf g2 = n) :
  (∃ g : G1 × G2, orderOf g = m * n) ↔ Nat.coprime m n := by sorry
