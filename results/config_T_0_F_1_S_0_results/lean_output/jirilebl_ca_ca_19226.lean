import Mathlib

/-!
Translate: Let z ∈ ℂ. Show that e^{overline{z}} = \overline{e^z} and sin(\overline{z}) = \overline{\sin z} and cos(\overline{z}) = \overline{\cos z}.
This file contains only the statement (no proof).
-/

theorem conj_exp_sin_cos (z : Complex) :
  Star.star (Complex.exp z) = Complex.exp (Star.star z) ∧
  Star.star (Complex.sin z) = Complex.sin (Star.star z) ∧
  Star.star (Complex.cos z) = Complex.cos (Star.star z) := by
  sorry
