import Mathlib

/-!
Let z ∈ ℂ. Show that cos(iz) = cosh z and sin(iz) = i sinh z.
-/

theorem cos_I_mul (z : ℂ) : Complex.cos (Complex.I * z) = Complex.cosh z := by sorry

theorem sin_I_mul (z : ℂ) : Complex.sin (Complex.I * z) = Complex.I * Complex.sinh z := by sorry
