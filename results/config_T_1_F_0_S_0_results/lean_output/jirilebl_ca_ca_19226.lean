import Mathlib

theorem complex_conj_exp_sin_cos (z : ℂ) :
  Complex.exp (Complex.conj z) = Complex.conj (Complex.exp z) ∧
  Complex.sin (Complex.conj z) = Complex.conj (Complex.sin z) ∧
  Complex.cos (Complex.conj z) = Complex.conj (Complex.cos z) := by sorry