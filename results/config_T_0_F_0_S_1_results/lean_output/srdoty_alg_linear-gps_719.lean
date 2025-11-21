import Mathlib

open Matrix

/-- The matrix H0 = [[1,0],[0,-1]] as a 2x2 real matrix. -/
def h0 : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j => if i = j then if i = (0 : Fin 2) then (1 : ℝ) else (-1 : ℝ) else 0

/-- The rotation matrix R_phi = [[cos phi, -sin phi],[sin phi, cos phi]] as a 2x2 real matrix. -/
def rot (phi : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = (0 : Fin 2) then
      if j = (0 : Fin 2) then Real.cos phi else -Real.sin phi
    else
      if j = (0 : Fin 2) then Real.sin phi else Real.cos phi

theorem rot_two_theta_h0_rot_two_theta_eq_h0 (theta : ℝ) :
  (rot (2 * theta)) * h0 * (rot (2 * theta)) = h0 := by sorry
