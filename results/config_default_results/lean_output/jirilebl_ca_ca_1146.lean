/--
Statement: 2x2 real matrix M is the real representation of z ↦ ξ z + ζ z̄.
det M = |ξ|^2 - |ζ|^2.
-/
import Mathlib
open Complex

def M_of_complex (ξ ζ : ℂ) : Matrix (Fin 2) (Fin 2) ℝ :=
  ![![ξ.re + ζ.re, -ξ.im + ζ.im],
     ![ξ.im + ζ.im, ξ.re - ζ.re]]

/-- The determinant of the real 2x2 matrix representing z ↦ ξ z + ζ z̄ is |ξ|^2 - |ζ|^2. -/
theorem det_of_two_by_two_complex_map (ξ ζ : ℂ) :
  Matrix.det (M_of_complex ξ ζ) = |ξ| ^ 2 - |ζ| ^ 2 := by
  sorry
