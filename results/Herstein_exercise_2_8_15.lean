import Mathlib

/--
If p > q are primes with q ∣ (p - 1), then any two nonabelian groups of order p * q are isomorphic.
This states the classification result as a theorem. The proof is omitted (sorry).
-/
theorem herstein_exercise_2_8_15 (p q : ℕ) (hp : Nat.Prime p) (hq : Nat.Prime q) (hpq : p > q)
  (hdiv : q ∣ p - 1)
  (G1 G2 : Type _) [Group G1] [Fintype G1] [Group G2] [Fintype G2]
  (card1 : Fintype.card G1 = p * q) (card2 : Fintype.card G2 = p * q)
  (nonabel1 : ∃ x y : G1, x * y ≠ y * x) (nonabel2 : ∃ x y : G2, x * y ≠ y * x) :
  Nonempty (G1 ≃* G2) := by sorry
