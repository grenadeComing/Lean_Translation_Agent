import Mathlib

/-!
Exercise (Artin 6.4.2) — translation only.
Prove that no group of order p * q, where p and q are primes, is simple.
-/

theorem Artin_exercise_6_4_2 {G : Type _} [Group G] [Fintype G] (p q : ℕ) (hp : p.Prime) (hq : q.Prime)
  (h_card : Fintype.card G = p * q) : ¬ IsSimpleGroup G := by sorry
