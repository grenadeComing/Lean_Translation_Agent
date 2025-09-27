import Mathlib

/-!
Let z : ℂ. Show |cos z| ≥ |cos (Re z)|.
This file contains only the statement (no proof), ending with `:= by sorry`.
-/

theorem complex_abs_cos_ge_re (z : ℂ) : Complex.abs (Complex.cos z) ≥ abs (Real.cos z.re) := by sorry
