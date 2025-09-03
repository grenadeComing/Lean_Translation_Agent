import Mathlib

open Polynomial
open Finset

/-- The polynomial ((x+2)^p - 2^p) / x expanded as a polynomial in ℤ[x]. -/
noncomputable def df_polynomial (p : ℕ) : Polynomial ℤ :=
  (range p).sum fun k => C ((Nat.choose p (k+1) : ℤ) * (2 : ℤ) ^ (p - (k+1))) * X ^ k

/-- For an odd prime p, the polynomial ((x+2)^p - 2^p)/x is irreducible in ℤ[x]. -/
theorem Dummit_Foote_exercise_9_4_2d (p : ℕ) (hp : Nat.Prime p) (hodd : p ≠ 2) :
  Irreducible (df_polynomial p) := by
  -- Proof omitted: apply Eisenstein's criterion with the prime `p` to the above expansion.
  sorry
