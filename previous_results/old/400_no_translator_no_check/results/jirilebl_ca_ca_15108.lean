import Mathlib

/-!
Let z ∈ ℂ. Show that |cos z| ≥ |cos (Re z)|.
-/

theorem abs_cos_ge_abs_cos_re (z : Complex) : Complex.abs (Complex.cos z) ≥ Complex.abs (Complex.cos z.re) := by
  sorry
