import Mathlib
open Complex

/-- The 2x2 real matrix representing the complex number a + i b is
    [[a, -b], [b, a]]. -/
def matrix_of_complex (a b : ℝ) : Matrix (Fin 2) (Fin 2) ℂ :=
  fun (i j : Fin 2) => if i = 0 then if j = 0 then (a : ℂ) else - (b : ℂ) else if j = 0 then (b : ℂ) else (a : ℂ)

/-- Candidate eigenvector corresponding to a + i b. -/
def eigvec1 : Fin 2 → ℂ := fun k => if k = 0 then (1 : ℂ) else - Complex.I

/-- Candidate eigenvector corresponding to a - i b. -/
def eigvec2 : Fin 2 → ℂ := fun k => if k = 0 then (1 : ℂ) else Complex.I

/-- If M represents a + i b then M has eigenvalues a ± i b with eigenvectors [1; ∓ i]. -/
theorem matrix_eigenvalues (a b : ℝ) :
  Matrix.mulVec (matrix_of_complex a b) eigvec1 = ((a : ℂ) + (b : ℂ) * Complex.I) • eigvec1 ∧
  Matrix.mulVec (matrix_of_complex a b) eigvec2 = ((a : ℂ) - (b : ℂ) * Complex.I) • eigvec2 := by sorry
