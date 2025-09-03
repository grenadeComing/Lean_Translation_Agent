import Mathlib

/-- Exercise (Artin 6.4.2):
If p and q are primes and G is a finite group with |G| = p * q, then G is not simple. -/
theorem Artin_exercise_6_4_2 (p q : ℕ) (hp : Nat.Prime p) (hq : Nat.Prime q)
  (G : Type*) [Group G] [Fintype G] (hcard : Fintype.card G = p * q) : ¬ IsSimpleGroup G := by sorry
