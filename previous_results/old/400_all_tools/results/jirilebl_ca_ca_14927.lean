import Mathlib

/-!
Let z be a complex number. Show that |cos z| ≥ |cos (Re z)|.
This file contains only the statement (no proof):
-/

open Complex

theorem abs_cos_ge_abs_cos_re (z : ℂ) : Complex.abs (cos z) ≥ Complex.abs (cos (z.re : ℂ)) := by sorry
