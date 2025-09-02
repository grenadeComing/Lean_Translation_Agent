import Mathlib

-- Show there are infinitely many integers a such that f(x) = x^7 + 15x^2 - 30x + a is irreducible over Q.

open Set
open Polynomial
open Nat

/-- The polynomial f(x) = x^7 + 15x^2 - 30x + a over Q. -/
noncomputable def f (a : Int) : Polynomial ℚ :=
  Polynomial.C (1 : ℚ) * X ^ 7 + Polynomial.C (15 : ℚ) * X ^ 2 - Polynomial.C (30 : ℚ) * X + Polynomial.C (a : ℚ)

theorem Herstein_exercise_4_6_3 : (Set.Infinite {a : Int | Irreducible (f a : Polynomial ℚ)}) :=
  by
    -- proof omitted
    sorry
