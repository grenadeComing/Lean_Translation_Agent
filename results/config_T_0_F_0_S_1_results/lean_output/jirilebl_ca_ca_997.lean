import Mathlib

open Complex

/-- The 2x2 real matrix representing the complex number a + i b, viewed as a matrix over ℂ. -/
def matrix_of_complex (a b : ℝ) : Matrix (Fin 2) (Fin 2) ℂ :=
  Matrix.of fun i j =>
    if i = 0 then
      if j = 0 then (a : ℂ) else (-b : ℂ)
    else
      if j = 0 then (b : ℂ) else (a : ℂ)

/-- Candidate eigenvectors [1; -i] and [1; i] (as functions Fin 2 → ℂ). -/
def eigenvec_plus : Fin 2 → ℂ := fun i => if i = 0 then (1 : ℂ) else -I
def eigenvec_minus : Fin 2 → ℂ := fun i => if i = 0 then (1 : ℂ) else I

/-- The matrix representing a + i b has eigenvalues a ± i b with eigenvectors [1; ∓ i]. -/
theorem matrix_of_complex_has_eigenpairs (a b : ℝ) :
  (matrix_of_complex a b ⬝ eigenvec_plus = (a + I * b) • eigenvec_plus) ∧
  (matrix_of_complex a b ⬝ eigenvec_minus = (a - I * b) • eigenvec_minus) := by sorry
