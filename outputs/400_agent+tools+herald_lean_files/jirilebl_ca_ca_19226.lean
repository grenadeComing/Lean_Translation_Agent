import Mathlib

/-!
Simple statements about complex conjugation for exp, sin, cos.
-/

variable (z : ℂ)

theorem exp_conj_eq : Complex.exp ((starRingEnd ℂ) z) = (starRingEnd ℂ) (Complex.exp z) := by sorry

theorem sin_conj_eq : Complex.sin ((starRingEnd ℂ) z) = (starRingEnd ℂ) (Complex.sin z) := by sorry

theorem cos_conj_eq : Complex.cos ((starRingEnd ℂ) z) = (starRingEnd ℂ) (Complex.cos z) := by sorry
