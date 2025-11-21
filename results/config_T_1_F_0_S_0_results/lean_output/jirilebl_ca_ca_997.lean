import Mathlib
open Complex

theorem matrix_represents_complex_has_eigenpairs (a b : ℝ) :
  let M : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
    if i = 0 ∧ j = 0 then a
    else if i = 0 ∧ j = 1 then -b
    else if i = 1 ∧ j = 0 then b
    else a
  let Mℂ := M.map (algebraMap ℝ ℂ)
  let v1 : Fin 2 → ℂ := fun j => if j = 0 then (1 : ℂ) else -I
  let v2 : Fin 2 → ℂ := fun j => if j = 0 then (1 : ℂ) else I
  (Mℂ.mulVec v1 = (a + b * I) • v1) ∧ (Mℂ.mulVec v2 = (a - b * I) • v2) := by sorry
