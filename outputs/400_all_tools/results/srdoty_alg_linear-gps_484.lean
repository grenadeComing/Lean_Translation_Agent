import Mathlib

open Matrix

noncomputable def R (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = (0 : Fin 2) then
      if j = (0 : Fin 2) then Real.cos θ else -Real.sin θ
    else
      if j = (0 : Fin 2) then Real.sin θ else Real.cos θ

theorem so2_eq_rotations :
  {A : Matrix (Fin 2) (Fin 2) ℝ | Matrix.transpose A * A = 1 ∧ Matrix.det A = 1}
    = {A : Matrix (Fin 2) (Fin 2) ℝ | ∃ θ, A = R θ} := by sorry
