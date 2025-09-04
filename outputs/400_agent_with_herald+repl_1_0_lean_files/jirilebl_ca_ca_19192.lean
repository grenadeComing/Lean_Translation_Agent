import Mathlib

/-!
Prove that for any complex z, |sec z| ≥ |sec (Re z)|.
Here sec z is defined as 1 / cos z.
-/

theorem abs_sec_ge_abs_sec_re (z : Complex) :
  Complex.abs (1 / Complex.cos z) ≥ Complex.abs (1 / Complex.cos (z.re : Complex)) := by
  sorry
