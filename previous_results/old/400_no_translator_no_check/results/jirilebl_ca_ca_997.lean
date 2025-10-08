import Mathlib

open Matrix

/-!
We consider the real 2x2 matrix representing the complex number a + i b:
M = [[a, -b], [b, a]] (viewed as a matrix with complex entries).
We state that this matrix has eigenvalues a ± i b with eigenvectors [1; ∓ i].
-/

variable (a b : ℝ)

def M : Matrix (Fin 2) (Fin 2) ℂ := fun i j =>
  if i = 0 then if j = 0 then (a : ℂ) else (-(b : ℂ))
  else if j = 0 then (b : ℂ) else (a : ℂ)

theorem complex_matrix_eigenpairs :
  let v_plus : Fin 2 → ℂ := fun i => if i = 0 then 1 else -Complex.I
  let v_minus : Fin 2 → ℂ := fun i => if i = 0 then 1 else Complex.I
  Matrix.mulVec (M a b) v_plus = ((a : ℂ) + (b : ℂ) * Complex.I) • v_plus ∧
  Matrix.mulVec (M a b) v_minus = ((a : ℂ) - (b : ℂ) * Complex.I) • v_minus := by
  sorry
