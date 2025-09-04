import Mathlib

/-!
Let z ∈ ℂ. Prove that |sec z| ≥ |sec (Re z)|.
This file contains only the statement; proof omitted.
-/

theorem sec_abs_ge_re (z : Complex) :
  Complex.abs (1 / Complex.cos z) ≥ Complex.abs (1 / Complex.cos z.re) := by
  sorry
