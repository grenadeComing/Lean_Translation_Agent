import Mathlib

open Polynomial

variable (n : ℕ) (hpos : 3 < n) (hsq : Squarefree n)

/-- The ring Z[√(-n)] as an adjoin_root of X^2 + n. -/
def R := AdjoinRoot (Polynomial.X ^ 2 + Polynomial.C (n : Int))

/-- The adjoined root, i.e. √(-n). -/
def alpha : R := AdjoinRoot.root (Polynomial.X ^ 2 + Polynomial.C (n : Int))

theorem irreducible_two : Irreducible (2 : R) := by sorry

theorem irreducible_sqrt_neg_n : Irreducible (alpha : R) := by sorry

theorem irreducible_one_plus_sqrt_neg_n : Irreducible (1 + alpha : R) := by sorry
