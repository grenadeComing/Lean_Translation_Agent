import Mathlib

/-!
Let z ∈ ℂ. Show that |sin z| ≥ |sin (Re z)|.
This file states the lemma in Lean4 / Mathlib4. The proof is omitted (":= by sorry").
-/

theorem abs_sin_complex_ge_abs_sin_re (z : ℂ) :
  Complex.abs (Complex.sin z) ≥ Complex.abs (Complex.sin z.re) := by sorry
