import Mathlib

/-!
Let ℝ[t] be the vector space of polynomials in one variable t.
Let D : ℝ[t] → ℝ[t] be the derivative operator (derivative in t).
Show that D is a linear operator.
-/

open Polynomial

theorem D_linear (p q : Polynomial Real) (a b : Real) :
  Polynomial.derivative (a • p + b • q) = a • Polynomial.derivative p + b • Polynomial.derivative q := by sorry
