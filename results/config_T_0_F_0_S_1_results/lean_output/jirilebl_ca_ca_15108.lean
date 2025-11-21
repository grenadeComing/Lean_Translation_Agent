import Mathlib

/-!
Let z ∈ ℂ. Show that |cos z| ≥ |cos (Re z)|.
-/

theorem complex_abs_cos_ge_abs_cos_re (z : ℂ) : Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos (z.re : ℂ)) := by sorry