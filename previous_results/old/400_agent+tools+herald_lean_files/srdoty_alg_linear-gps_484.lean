import Mathlib

open Mathlib

noncomputable def rot (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 ∧ j = 0 then Real.cos θ
    else if i = 0 ∧ j = 1 then -Real.sin θ
    else if i = 1 ∧ j = 0 then Real.sin θ
    else Real.cos θ

def SO2 : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { A | Matrix.transpose A * A = 1 ∧ Matrix.det A = 1 }

theorem SO2_eq_rotations : SO2 = Set.range rot := by sorry
