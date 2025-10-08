import Mathlib

open Real

/-- The matrix H0 = diag(1, -1) as a 2x2 real matrix. -/
def H0 : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = (0 : Fin 2) ∧ j = (0 : Fin 2) then 1
  else if i = (1 : Fin 2) ∧ j = (1 : Fin 2) then -1
  else 0

/-- The rotation matrix R_{2θ} for angle 2θ. -/
def R2 (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
  if i = (0 : Fin 2) ∧ j = (0 : Fin 2) then cos (2 * θ)
  else if i = (0 : Fin 2) ∧ j = (1 : Fin 2) then -sin (2 * θ)
  else if i = (1 : Fin 2) ∧ j = (0 : Fin 2) then sin (2 * θ)
  else cos (2 * θ)

/-- Conjugating H0 by the rotation R_{2θ} yields H0. -/
theorem R2_conj_H0_eq_H0 (θ : ℝ) : R2 θ * H0 * R2 θ = H0 := by sorry
