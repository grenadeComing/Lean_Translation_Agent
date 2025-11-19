import Mathlib
open Complex

theorem matrix_of_complex_has_eigenvalues (a b : ℝ) :
  let M : Matrix (Fin 2) (Fin 2) ℂ := ![![ (a : ℂ), -(b : ℂ) ], ![ (b : ℂ), (a : ℂ) ]]
  let v_plus : Fin 2 → ℂ := ![1, -I]
  let v_minus : Fin 2 → ℂ := ![1, I]
  let λ_plus := (a : ℂ) + I * (b : ℂ)
  let λ_minus := (a : ℂ) - I * (b : ℂ)
  M.mulVec v_plus = λ_plus • v_plus ∧ M.mulVec v_minus = λ_minus • v_minus := by sorry