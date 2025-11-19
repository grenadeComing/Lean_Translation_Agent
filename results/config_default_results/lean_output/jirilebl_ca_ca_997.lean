import Mathlib
open Matrix
open scoped Matrix
open Complex

/-- If a 2x2 real matrix M represents a+ib, i.e. M = !![a, -b; b, a], then M has eigenvalues a±ib with eigenvectors [1; ∓ i]. -/
theorem hasEigenvalues_complex_number (a b : ℝ) :
  ∀ (M : Matrix (Fin 2) (Fin 2) ℝ),
    M = !![a, -b; b, a] →
      ∃ (λ1 λ2 : ℂ) (v1 v2 : Fin 2 → ℂ),
        v1 ≠ 0 ∧ v2 ≠ 0 ∧
        (M.map (algebraMap ℝ ℂ)).mulVec v1 = λ1 • v1 ∧
        (M.map (algebraMap ℝ ℂ)).mulVec v2 = λ2 • v2 ∧
        λ1 = a + Complex.I * b ∧ λ2 = a - Complex.I * b
:= by sorry