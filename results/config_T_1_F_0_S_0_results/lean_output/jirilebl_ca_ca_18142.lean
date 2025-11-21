import Mathlib

theorem abs_add_sq (a b : ℂ) : (Complex.abs (a + b)) ^ 2 = (Complex.abs a) ^ 2 + (Complex.abs b) ^ 2 + 2 * (a * Complex.conj b).re := by sorry