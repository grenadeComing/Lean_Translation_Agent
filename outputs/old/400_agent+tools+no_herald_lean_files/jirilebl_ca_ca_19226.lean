import Mathlib

open Complex

/-- For z : ℂ, e^{conj z} = conj (e^z) -/
theorem exp_conj_eq_conj_exp (z : ℂ) : Complex.exp ((starRingEnd ℂ) z) = (starRingEnd ℂ) (Complex.exp z) := by
  sorry

/-- For z : ℂ, sin(conj z) = conj (sin z) -/
theorem sin_conj_eq_conj_sin (z : ℂ) : Complex.sin ((starRingEnd ℂ) z) = (starRingEnd ℂ) (Complex.sin z) := by
  sorry

/-- For z : ℂ, cos(conj z) = conj (cos z) -/
theorem cos_conj_eq_conj_cos (z : ℂ) : Complex.cos ((starRingEnd ℂ) z) = (starRingEnd ℂ) (Complex.cos z) := by
  sorry
