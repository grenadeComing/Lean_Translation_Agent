import Mathlib

/-!
Suppose a 2×2 real matrix M represents the real-linear map z ↦ ξ z + ζ 
conj(z) on ℂ ≃ ℝ^2 (with z = x + i y and the basis (1, i)). One computes
that the matrix is

  [ ξ.re + ζ.re    ζ.im - ξ.im ]
  [ ξ.im + ζ.im    ξ.re - ζ.re ]

and its determinant equals |ξ|^2 - |ζ|^2.
-/

theorem det_of_complex_map (ξ ζ : ℂ) :
  (ξ.re + ζ.re) * (ξ.re - ζ.re) - (ζ.im - ξ.im) * (ξ.im + ζ.im) =
    Complex.abs ξ ^ 2 - Complex.abs ζ ^ 2 := by
  sorry
