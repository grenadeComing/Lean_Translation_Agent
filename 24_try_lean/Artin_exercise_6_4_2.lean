import Mathlib

/-- Exercise: No group of order p * q, where p and q are prime, is simple. -/
theorem Artin_exercise_6_4_2 {G : Type _} [Group G] [Fintype G] {p q : ℕ}
  (hp : Nat.Prime p) (hq : Nat.Prime q) (hcard : Fintype.card G = p * q) :
  ¬ IsSimpleGroup G := by sorry
