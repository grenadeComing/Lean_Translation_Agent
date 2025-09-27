import Mathlib

open Matrix

noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = (0 : Fin 2) ∧ j = (0 : Fin 2) then Real.cos θ
    else if i = (0 : Fin 2) ∧ j = (1 : Fin 2) then -Real.sin θ
    else if i = (1 : Fin 2) ∧ j = (0 : Fin 2) then Real.sin θ
    else Real.cos θ

theorem R_theta_in_SO2 (θ : ℝ) : Matrix.transpose (R θ) * R θ = 1 ∧ Matrix.det (R θ) = 1 := by sorry
