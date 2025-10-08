import Mathlib

open Matrix
open Real
open scoped Real

theorem srdoty_alg_symmetry_743 (n : ℕ) (hn : 3 ≤ n) :
  let θ := 2 * π / (n : ℝ)
  let r : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
    if i = (0 : Fin 2) then
      if j = (0 : Fin 2) then cos θ else - sin θ
    else
      if j = (0 : Fin 2) then sin θ else cos θ
  let h : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
    if i = (0 : Fin 2) then if j = (0 : Fin 2) then 1 else 0 else if j = (0 : Fin 2) then 0 else -1
  r * h * r = h := by sorry
