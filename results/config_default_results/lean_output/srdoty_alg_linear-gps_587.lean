import Mathlib

open Real

/-- The matrix H0 = [[1,0],[0,-1]] as a 2x2 real matrix. -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = (0 : Fin 2) then
      if j = (0 : Fin 2) then 1 else 0
    else
      if j = (0 : Fin 2) then 0 else -1

/-- The rotation matrix R φ = [[cos φ, -sin φ],[sin φ, cos φ]]. -/
noncomputable def R (φ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = (0 : Fin 2) then
      if j = (0 : Fin 2) then cos φ else -sin φ
    else
      if j = (0 : Fin 2) then sin φ else cos φ

/-- The family H_θ defined by H_θ = H0 * R_{-2θ}. -/
noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := H0 * R (-2 * θ)

theorem H_theta_eq_H0_mul_R_neg_two_theta (θ : ℝ) : H θ = H0 * R (-2 * θ) := by sorry