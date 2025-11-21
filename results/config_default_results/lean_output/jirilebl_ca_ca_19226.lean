import Mathlib

open Complex

/-- Let z : ℂ. Show that exp(conj z) = conj (exp z) and sin (conj z) = conj (sin z) and cos (conj z) = conj (cos z). -/
theorem exp_conj_sin_cos (z : ℂ) : Complex.exp (Star.star z) = Star.star (Complex.exp z) ∧
  Complex.sin (Star.star z) = Star.star (Complex.sin z) ∧
  Complex.cos (Star.star z) = Star.star (Complex.cos z) := by sorry