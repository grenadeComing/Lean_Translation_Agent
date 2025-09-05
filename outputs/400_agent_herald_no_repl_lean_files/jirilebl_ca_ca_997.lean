import Mathlib

open Complex

theorem matrix_repr_complex_eigenvalues (a b : ℝ) :
  let M : Matrix (Fin 2) (Fin 2) ℂ := ![![↑a, -↑b], ![↑b, ↑a]] in
  M.mulVec (![1, -I]) = (↑a + I * ↑b) • (![1, -I]) ∧
  M.mulVec (![1, I])  = (↑a - I * ↑b) • (![1, I]) := by sorry
