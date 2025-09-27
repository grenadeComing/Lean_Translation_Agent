import Mathlib

open Complex

theorem det_of_complex_rep (ξ ζ : ℂ) :
  (ξ.re + ζ.re) * (ξ.re - ζ.re) - (-ξ.im + ζ.im) * (ξ.im + ζ.im) =
    Complex.normSq ξ - Complex.normSq ζ := by
  sorry
