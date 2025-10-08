import Mathlib

/-!
Simple statements: cos (I * z) = cosh z and sin (I * z) = I * sinh z for z : Complex.
We provide only the statements and end with `:= by sorry` (no proofs), as requested.
-/

open Complex

theorem cos_I_mul (z : Complex) : cos (I * z) = cosh z := by sorry

theorem sin_I_mul (z : Complex) : sin (I * z) = I * sinh z := by sorry
