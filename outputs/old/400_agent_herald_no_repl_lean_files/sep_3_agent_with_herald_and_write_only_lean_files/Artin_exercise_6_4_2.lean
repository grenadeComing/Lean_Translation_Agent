import Mathlib

/--
Exercise (Artin 6.4.2): No group of order p * q, where p and q are prime, is simple.
We state this as: for primes p and q and a group G with card G = p * q,
there exists a nontrivial proper normal subgroup of G.
-/
theorem Artin_exercise_6_4_2 {p q : ℕ} (hp : Nat.Prime p) (hq : Nat.Prime q)
  {G : Type _} [Group G] [Fintype G] (hcard : Fintype.card G = p * q) :
  ∃ N : NormalSubgroup G, N ≠ (⊤ : NormalSubgroup G) ∧ N ≠ (⊥ : NormalSubgroup G) := by sorry
