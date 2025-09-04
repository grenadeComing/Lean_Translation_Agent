import Mathlib

open Complex
open Matrix

/-- If M = [[a, -b],[b, a]] represents the complex number a + I*b, then M has eigenpairs
    (a + I*b, [1, -I]^T) and (a - I*b, [1, I]^T). -/
lemma complex_2x2_matrix_eigenpairs (a b : ℝ) :
  let M : Matrix (Fin 2) (Fin 2) ℂ := fun i j =>
    if i = 0 then if j = 0 then ofReal a else -ofReal b else if j = 0 then ofReal b else ofReal a
  let v1 : Fin 2 → ℂ := fun i => if i = 0 then (1 : ℂ) else -I
  let v2 : Fin 2 → ℂ := fun i => if i = 0 then (1 : ℂ) else I
  M.mulVec v1 = (ofReal a + I * ofReal b) • v1 ∧ M.mulVec v2 = (ofReal a - I * ofReal b) • v2 := by sorry
