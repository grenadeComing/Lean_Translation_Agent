import Mathlib

open Complex
open Matrix

theorem matrix_represents_complex_has_eigenpairs (a b : ℝ) :
  let M : Matrix (Fin 2) (Fin 2) ℝ :=
    Matrix.ofFun fun i j =>
      if i = 0 ∧ j = 0 then a
      else if i = 0 ∧ j = 1 then -b
      else if i = 1 ∧ j = 0 then b
      else a
  let Mℂ : Matrix (Fin 2) (Fin 2) ℂ := M.map (fun r => (r : ℂ))
  let v_pos : Fin 2 → ℂ := fun i => if i = 0 then (1 : ℂ) else -Complex.I
  let v_neg : Fin 2 → ℂ := fun i => if i = 0 then (1 : ℂ) else Complex.I
  (∀ i, ∑ j, Mℂ i j * v_pos j = ((a : ℂ) + Complex.I * (b : ℂ)) * v_pos i) ∧
  (∀ i, ∑ j, Mℂ i j * v_neg j = ((a : ℂ) - Complex.I * (b : ℂ)) * v_neg i) := by sorry