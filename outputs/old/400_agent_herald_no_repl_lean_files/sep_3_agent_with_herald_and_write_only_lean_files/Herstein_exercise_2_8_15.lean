import Mathlib

/--
Herstein, Exercise 2.8.15 (statement only).
If p > q are primes with q ∣ (p - 1), then any two nonabelian groups of order p*q are isomorphic.
We state this in Lean: for any two finite groups G and H of order p*q which are nonabelian,
there exists a multiplicative equivalence (group isomorphism) between them.
-/
theorem herstein_exercise_2_8_15 (p q : ℕ) (hp : Nat.Prime p) (hq : Nat.Prime q)
  (hq_div : q ∣ (p - 1)) (hpgt : p > q) :
  ∀ (G H : Type*) [Group G] [Fintype G] [Group H] [Fintype H],
    Fintype.card G = p * q → Fintype.card H = p * q →
    (¬∀ a b : G, a * b = b * a) → (¬∀ a b : H, a * b = b * a) →
    Nonempty (G ≃* H) := by sorry
