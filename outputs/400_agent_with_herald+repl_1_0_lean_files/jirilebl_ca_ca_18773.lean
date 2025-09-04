import Mathlib

/-!
Let z ∈ ℂ. Show that |tanh z| ≤ tanh |Re z|.
-/

theorem tanh_abs_le_tanh_abs_re (z : ℂ) : Complex.abs (Complex.tanh z) ≤ Real.tanh (abs z.re) := by sorry
