import Mathlib

/-!
Let z ∈ ℂ. Show that |sin z| ≥ |sin (Re z)|.
-/

theorem abs_sin_complex_ge_abs_sin_re (z : Complex) :
  Complex.abs (Complex.sin z) ≥ Complex.abs (Complex.sin (z.re : Complex)) := by sorry
