import Mathlib

open Complex
open Matrix

theorem jirilebl_ca_ca_997 (a b : ℝ) :
  let M : Matrix (Fin 2) (Fin 2) ℂ := fun i j =>
    if i = 0 then if j = 0 then (a : ℂ) else - (b : ℂ) else if j = 0 then (b : ℂ) else (a : ℂ)
  let v1 : Fin 2 → ℂ := fun i => if i = 0 then (1 : ℂ) else -Complex.I
  let v2 : Fin 2 → ℂ := fun i => if i = 0 then (1 : ℂ) else Complex.I
  M.mulVec v1 = ((a : ℂ) + Complex.I * (b : ℂ)) • v1 ∧ M.mulVec v2 = ((a : ℂ) - Complex.I * (b : ℂ)) • v2 := by sorry
