import Mathlib

/-!
Let z be a complex number. Show that |sin z| ≥ |sin (Re z)|.
This file provides only the statement (no proof), ending with `:= by sorry` as requested.
-/

theorem complex.abs_sin_ge_abs_sin_re (z : Complex) :
  Complex.abs (Complex.sin z) ≥ Complex.abs (Complex.sin (z.re : Complex)) := by
  sorry
