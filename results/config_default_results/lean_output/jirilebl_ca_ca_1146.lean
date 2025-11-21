import Mathlib
open Complex

/-- Suppose a 2×2 real matrix M is represented by z ↦ ξ z + ζ conj z (identifying ℂ ≃ ℝ^2 via the basis (1, I)).
    Then det M = |ξ|^2 - |ζ|^2. -/
theorem jirilebl_ca_ca_1146 (ξ ζ : ℂ) :
  let a : ℝ := ξ.re + ζ.re
  let b : ℝ := -ξ.im + ζ.im
  let c : ℝ := ξ.im + ζ.im
  let d : ℝ := ξ.re - ζ.re
  let M : Matrix (Fin 2) (Fin 2) ℝ := Matrix.of fun i j =>
    if i = 0 then if j = 0 then a else b else if j = 0 then c else d
  M.det = Complex.normSq ξ - Complex.normSq ζ := by sorry
