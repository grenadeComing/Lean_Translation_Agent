import Mathlib

open Complex

/-- Suppose a 2×2 real matrix M is given by the real-linear map C → C, z ↦ ξ * z + ζ * conj z (viewing C as a 2-dimensional real vector space with basis (1, I)).
    Then the determinant of the corresponding real 2×2 matrix equals |ξ|^2 - |ζ|^2. -/
theorem det_of_complex_representation (ξ ζ : ℂ) :
  let M : Matrix (Fin 2) (Fin 2) ℝ :=
    !![![ξ.re + ζ.re, -ξ.im + ζ.im], ![ξ.im + ζ.im, ξ.re - ζ.re]] in
  (M.det : ℝ) = (abs ξ) ^ 2 - (abs ζ) ^ 2 := by sorry