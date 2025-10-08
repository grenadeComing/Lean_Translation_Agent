import Mathlib

/-!
Let D : Polynomial Real → Polynomial Real be the derivative operator D(p) = Polynomial.derivative p.
We state that D is linear by giving the linear_map property and the two defining equalities.
-/

theorem derivative_is_linear : IsLinearMap Real (Polynomial.derivative : Polynomial Real → Polynomial Real) := by
  sorry

theorem derivative_add (p q : Polynomial Real) :
    Polynomial.derivative (p + q) = Polynomial.derivative p + Polynomial.derivative q := by
  sorry

theorem derivative_smul (a : Real) (p : Polynomial Real) :
    Polynomial.derivative (a • p) = a • Polynomial.derivative p := by
  sorry
