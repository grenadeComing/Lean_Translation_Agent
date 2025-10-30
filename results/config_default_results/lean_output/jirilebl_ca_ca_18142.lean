import Mathlib

theorem normSq_add (a b : ℂ) :
  Complex.normSq (a + b) = Complex.normSq a + Complex.normSq b + 2 * Complex.re (a * Complex.conj b) := by
  sorry
