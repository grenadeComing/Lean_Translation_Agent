import Mathlib

/-
We work with 2x2 real matrices indexed by Fin 2.
H0 = [[1,0],[0,-1]] and R_θ = [[cos(2θ), -sin(2θ)], [sin(2θ), cos(2θ)]].
We state R_θ * H0 * R_θ = H0 for all θ (proof omitted).
-/

open Matrix

def H0 : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 ∧ j = 0 then 1
    else if i = 1 ∧ j = 1 then -1
    else 0

noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 ∧ j = 0 then Real.cos (2 * θ)
    else if i = 0 ∧ j = 1 then - Real.sin (2 * θ)
    else if i = 1 ∧ j = 0 then Real.sin (2 * θ)
    else if i = 1 ∧ j = 1 then Real.cos (2 * θ)
    else 0

theorem rotation_conjugation (θ : ℝ) : R θ * H0 * R θ = H0 := by sorry
