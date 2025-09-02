import Mathlib

/-- Exercise (Artin 6.4.3): A group of order p^2 * q (p,q primes) is not simple. -/
theorem Artin_exercise_6_4_3 (p q : ℕ) (hp : Nat.Prime p) (hq : Nat.Prime q) {G : Type*} [Group G] [Fintype G]
  (hcard : Fintype.card G = p ^ 2 * q) : ¬ IsSimpleGroup G := by sorry
