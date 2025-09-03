import Mathlib

open Polynomial
open Nat
open Finset

-- Dummit and Foote, exercise 9.4.2(d)
-- Show that ((x+2)^p - 2^p) / x is irreducible in ℤ[x] for p an odd prime.

/-- The polynomial g_p(x) = ((x+2)^p - 2^p) / x expanded as a polynomial in ℤ[x]. -/
noncomputable def g (p : ℕ) : Polynomial ℤ :=
  Finset.sum (Finset.range p) fun j =>
    C ((Nat.choose p (j + 1) * 2 ^ (p - j - 1) : ℤ)) * X ^ j

theorem Dummit_Foote_exercise_9_4_2d (p : ℕ) [Fact (Nat.Prime p)] (hp : p ≠ 2) :
  Irreducible (g p) := by sorry
