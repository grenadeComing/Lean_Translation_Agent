import Mathlib

/--
If G is an abelian group of order p*q for distinct primes p and q, then G is cyclic.
This is exercise 4.4.2 in Dummit and Foote.
-/
theorem Dummit_Foote_exercise_4_4_2 {G : Type _} [CommGroup G] [Fintype G] [Pow G ℤ]
  {p q : ℕ} (hp : Nat.Prime p) (hq : Nat.Prime q) (hne : p ≠ q) (hcard : Fintype.card G = p * q) :
  IsCyclic G := by
  sorry
