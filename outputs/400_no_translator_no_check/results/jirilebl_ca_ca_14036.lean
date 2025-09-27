import Mathlib

theorem complex_normsq_add (a b : ℂ) :
  Complex.normSq (a + b) = Complex.normSq a + Complex.normSq b + 2 * (a * (starRingEnd ℂ) b).re := by sorry
