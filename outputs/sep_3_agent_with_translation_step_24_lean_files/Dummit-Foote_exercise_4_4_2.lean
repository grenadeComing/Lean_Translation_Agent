import Mathlib
open Subgroup
open Finset Nat
open scoped Classical
open Nat
open Subgroup

/-- If G is an abelian group of order p * q with p and q distinct primes, then G is cyclic. -/
theorem Dummit_Foote_exercise_4_4_2 {G : Type*} [CommGroup G] [Fintype G]
  {p q : ℕ} (hp : Nat.Prime p) (hq : Nat.Prime q) (hpq : p ≠ q) (G_card : Fintype.card G = p * q) :
  IsCyclic G := by sorry
